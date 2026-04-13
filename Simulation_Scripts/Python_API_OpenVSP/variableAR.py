import openvsp as vsp
import numpy as np
import Results as r
import matplotlib.pyplot as plt
import csv
import os


wing_id = vsp.AddGeom("WING")
vsp.Update()

b = 2;
c = 0.5;
AR = np.linspace(b/c, 12, 8);
c_new = b / AR;

for i in range(len(AR)):
    if os.path.exists(f"Results_AR_{i:.2f}.txt"):
        os.remove(f"Results_AR_{i:.2f}.txt")
    else:
        print(f"No existing results file for AR={b/AR[i]} found. Proceeding with analysis.")



vsp.SetParmVal(wing_id, "TotalSpan", "WingGeom", b)
#vsp.SetParmVal(wing_id, "TotalChord", "WingGeom", 0.5)

vsp.SetParmVal(wing_id, "Sweep", "XSec_1", 0)
#vsp.SetParmVal(wing_id, "Root_Chord", "XSec_1", 0.5)
#vsp.SetParmVal(wing_id, "Tip_Chord", "XSec_1", 0.5)

vsp.SetParmVal(wing_id, "ThickChord", "XSecCurve_0", 0.12)
vsp.SetParmVal(wing_id, "Camber", "XSecCurve_0", 0.02)
vsp.SetParmVal(wing_id, "CamberLoc", "XSecCurve_0", 0.4)

vsp.Update()
vsp.WriteVSPFile("variableAR.vsp3")

vsp.Update()
vsp.ExecAnalysis("VSPAEROComputeGeometry")
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
#vsp.SetDoubleAnalysisInput(aname, "Sref", [1],0)
#vsp.SetDoubleAnalysisInput(aname, "cref", [0.5],0)
vsp.SetDoubleAnalysisInput(aname, "bref", [b],0)


vsp.SetIntAnalysisInput(aname, "GroundEffectToggle", [1],0)
vsp.Update()

h = np.linspace(0.2, 4, 2)
h_b = h/b
CL_oge = [0.039514864583, 0.050804811377, 0.062094751719, 0.07338468561, 0.084674649339, 0.095964602584, 0.107254647762, 0.118544712294] #from variableAR_woGE.polar
CD_oge = 0.008771874360 #from TestWing_woGE.polar
CL = {}
CD = {}
L_D = {}

for i in range(len(AR)):
    current_AR = AR[i]
    vsp.SetParmVal(wing_id, "TotalChord", "WingGeom", c_new[i])
    vsp.SetParmVal(wing_id, "Root_Chord", "XSec_1", c_new[i])
    vsp.SetParmVal(wing_id, "Tip_Chord", "XSec_1", c_new[i])
    vsp.SetDoubleAnalysisInput(aname, "Sref", [b*c_new[i]],0)
    vsp.SetDoubleAnalysisInput(aname, "cref", [c_new[i]],0)
    vsp.Update()
    if CL == {} and CD == {}:
        print("The first iteration is going to begin")
    else:
        os.rename("Results_Output.txt", f"Results_AR_{i:.2f}.txt")
        print(f"Results for AR={b/i} saved to Results_AR_{i:.2f}.txt")
    
    CL[current_AR] = []
    CD[current_AR] = []
    L_D[current_AR] = []
    for j in h:
        vsp.SetDoubleAnalysisInput(aname, "GroundEffect", [j],0)
        vsp.ExecAnalysis(aname)
        current_CL, current_CD = r.read_results("variableAR.polar")
        CL[current_AR].append(current_CL[-1])
        CD[current_AR].append(current_CD[-1])
        #L_D[current_AR].append(current_L_D[-1])

print("VSPAERO Sweep Analysis Complete")

for i in range(len(AR)):
    arVal = AR[i]
    CLarray = np.array(CL[arVal])
    CL_ratio = CLarray / CL_oge[i]
    plt.plot(h_b,CL_ratio, marker='o', label=f'AR={AR[i]:.2f}')
plt.xlabel("h/b")
plt.ylabel("CL Ratio")
plt.legend()
plt.show()

"""data_dict = {
    "h/b": h_b,
    "CL_IGE/CL_OGE": CLige_oge,
    "CD_IGE/CD_OGE": CDige_oge,
}
with open('GroundEffectResults.csv', 'w', newline='') as csvfile:
    writer = csv.writer(csvfile)
    writer.writerow(data_dict.keys())
    writer.writerows(zip(*data_dict.values()))
print("Results saved to GroundEffectResults.csv")"""
