import openvsp as vsp
import numpy as np
import os
import Results as r


wing_id = vsp.AddGeom("WING")
vsp.Update()

b = 2;
c = 0.5;
AR = np.linspace(b/c,12,8);
c_new = b/AR;

vsp.SetParmVal(wing_id, "TotalSpan", "WingGeom", b)
vsp.SetParmVal(wing_id, "Sweep", "XSec_1", 0)


vsp.SetParmVal(wing_id, "ThickChord", "XSecCurve_0", 0.12)
vsp.SetParmVal(wing_id, "Camber", "XSecCurve_0", 0.02)
vsp.SetParmVal(wing_id, "CamberLoc", "XSecCurve_0", 0.4)

vsp.Update()
vsp.WriteVSPFile("varAR_woGE.vsp3")


aname = "VSPAEROSweep"

V = 10;
a = 343;
M = V / a;

vsp.SetDoubleAnalysisInput(aname, "MachStart", [M],0)
vsp.SetIntAnalysisInput(aname, "MachNpts", [1],0)
vsp.SetDoubleAnalysisInput(aname, "ReCref", [1000000.0],0)
vsp.SetIntAnalysisInput(aname, "ReCrefNpts", [1],0)
vsp.SetDoubleAnalysisInput(aname, "AlphaStart", [1.0],0)
vsp.SetIntAnalysisInput(aname, "AlphaNpts", [1],0)

vsp.SetIntAnalysisInput(aname, "UnsteadyType", [0],0)
vsp.Update()

vsp.SetDoubleAnalysisInput(aname, "Rho", [1.225],0)
#vsp.SetIntAnalysisInput(aname, "RefFlag", [1],0)
vsp.SetDoubleAnalysisInput(aname, "bref", [b],0)
#vsp.SetDoubleAnalysisInput(aname, "Vinf", [0.001],0)
#vsp.SetDoubleAnalysisInput(aname, "Vref", [0],0)


vsp.SetIntAnalysisInput(aname, "GroundEffectToggle", [0], 0)
vsp.Update()

CL = []
CD = []

print("Starting Aspect Ratio Sweep...")

for i, chord_val in enumerate(c_new):
    # 1. Update The Parametric Geometry
    vsp.SetParmVal(wing_id, "TotalChord", "WingGeom", chord_val)
    vsp.SetParmVal(wing_id, "Root_Chord", "XSec_1", chord_val)
    vsp.SetParmVal(wing_id, "Tip_Chord", "XSec_1", chord_val)
    vsp.Update()
    
    # 2. CRITICAL: Re-calculate the Mesh for the new shape
    vsp.ExecAnalysis("VSPAEROComputeGeometry")
    
    # 3. Update Reference Values (Sref & Cref) so CL is calculated correctly
    current_Sref = b * chord_val
    vsp.SetDoubleAnalysisInput(aname, "Sref", [current_Sref], 0)
    vsp.SetDoubleAnalysisInput(aname, "cref", [chord_val], 0)

    vsp.Update()
    
    # 4. Run the Solver
    vsp.ExecAnalysis(aname)
    
    # 5. Read Results
    # (Assuming your Results.py handles clearing the file or reading the last line correctly)
    current_CL, current_CD = r.read_results("varAR_woGE.polar")
    
    CL.append(current_CL[-1])
    CD.append(current_CD[-1])
    
    print(f"Iter {i+1}: Chord={chord_val:.2f}, Sref={current_Sref:.2f} -> CL={current_CL[-1]}")

# ... (File writing code remains the same) ...

file_name = "woGE_results.txt"
with open(file_name,'a') as f:
    f.write("CL for variable AR\n")
    for i in range(len(AR)):
        arVal = AR[i]
        clVal = CL[i]
        f.write(f"AR:{arVal:.2f},CL:{clVal}\n")
