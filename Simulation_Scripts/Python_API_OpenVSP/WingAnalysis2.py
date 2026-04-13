import openvsp as vsp
import numpy as np
import Results as r
import matplotlib.pyplot as plt
import csv

wing_id = vsp.AddGeom("WING")
vsp.Update()

b = 2
AR = 18
c = b/AR
vsp.SetParmVal(wing_id, "TotalSpan", "WingGeom", b)
vsp.SetParmVal(wing_id, "TotalChord", "WingGeom", c)

vsp.SetParmVal(wing_id, "Sweep", "XSec_1", 0)
vsp.SetParmVal(wing_id, "Root_Chord", "XSec_1", c)
vsp.SetParmVal(wing_id, "Tip_Chord", "XSec_1", c)

vsp.SetParmVal(wing_id, "ThickChord", "XSecCurve_0", 0.12)
vsp.SetParmVal(wing_id, "Camber", "XSecCurve_0", 0.02)
vsp.SetParmVal(wing_id, "CamberLoc", "XSecCurve_0", 0.4)

vsp.Update()
vsp.WriteVSPFile("Wing.vsp3")

vsp.Update()
vsp.ExecAnalysis("VSPAEROComputeGeometry")
aname = "VSPAEROSweep"

V = 0.0143;
a = 343;
M = V / a;

vsp.SetDoubleAnalysisInput(aname, "MachStart", [0],0)
vsp.SetIntAnalysisInput(aname, "MachNpts", [1],0)
vsp.SetDoubleAnalysisInput(aname, "ReCref", [1000000.0],0)
vsp.SetIntAnalysisInput(aname, "ReCrefNpts", [1],0)
vsp.SetDoubleAnalysisInput(aname, "AlphaStart", [1.0],0)
vsp.SetIntAnalysisInput(aname, "AlphaNpts", [1],0)

vsp.SetIntAnalysisInput(aname, "UnsteadyType", [0],0)
vsp.Update()

vsp.SetDoubleAnalysisInput(aname, "Rho", [1.225],0)
#vsp.SetIntAnalysisInput(aname, "RefFlag", [1],0)
vsp.SetDoubleAnalysisInput(aname, "Sref", [b*c],0)
vsp.SetDoubleAnalysisInput(aname, "cref", [c],0)
vsp.SetDoubleAnalysisInput(aname, "bref", [b],0)
#vsp.SetDoubleAnalysisInput(aname, "Vinf", [0.001],0)
#vsp.SetDoubleAnalysisInput(aname, "Vref", [0],0)


vsp.SetIntAnalysisInput(aname, "GroundEffectToggle", [1],0)
vsp.Update()

h = np.linspace(0.2, 4, 20)
h_b = h/b
CL_oge = 0.195290677152 #from Wing_woGE.polar
CD_oge = 0.007975646376 #from Wing_woGE.polar
CL = []
CD = []
L_D = []
for i in h:
    vsp.SetDoubleAnalysisInput(aname, "GroundEffect", [i],0)
    vsp.ExecAnalysis(aname)
    current_CL, current_CD, = r.read_results("Wing.polar")
    CL.append(current_CL[-1])
    CD.append(current_CD[-1])


print("VSPAERO Sweep Analysis Complete")
print("Ground Effect Heights: ", h_b)
print("Corresponding CL values: ", CL)
print("Corresponding CD values: ", CD)


CL_ige = np.array(CL)
CLige_oge = CL_ige / CL_oge

CD_ige = np.array(CD)
CDige_oge = CD_ige / CD_oge

CL_CD = CL_ige / CD_ige

fig, axs = plt.subplots(1,3)
fig.suptitle('Ground Effect Analysis using VSPAERO')
axs[0].plot(h_b, CLige_oge,marker='o', label='CL', color='blue')
axs[1].plot(h_b, CDige_oge, marker='o', label='CD', color='red')
axs[2].plot(h_b, CL_CD,marker='o', label='L/D', color='green')
axs[0].set_xlabel('Ground Effect Height (h/b)')
axs[0].set_ylabel('IGE/OGE Ratio')
axs[1].set_xlabel('Ground Effect Height (h/b)')
axs[1].set_ylabel('IGE/OGE Ratio')
axs[2].set_xlabel('Ground Effect Height (h/b)')
axs[2].set_ylabel('L/D Ratio')
axs[0].grid(True)
axs[1].grid(True)
axs[2].grid(True)
plt.show()


data_dict = {
    "h/b": h_b,
    "CL_IGE/CL_OGE": CLige_oge,
    "CD_IGE/CD_OGE": CDige_oge,
}
with open('GroundEffectResults.csv', 'w', newline='') as csvfile:
    writer = csv.writer(csvfile)
    writer.writerow(data_dict.keys())
    writer.writerows(zip(*data_dict.values()))
print("Results saved to GroundEffectResults.csv")
print(c)
