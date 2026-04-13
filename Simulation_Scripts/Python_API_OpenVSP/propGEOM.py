import openvsp as vsp
import numpy as np
import matplotlib.pyplot as plt

dia = 1;
R = dia/2;
n = 2;
chord = 0.04/R;
twist = 0;
thick = 0.12;
r_R = np.linspace(0.2,1,10)

vsp.ClearVSPModel()

prop_id = vsp.AddGeom("PROP")
xsec_surf = vsp.GetXSecSurf(prop_id, 0)
vsp.Update()

vsp.SetParmVal(prop_id, "PropMode","Design", vsp.PROP_BLADES)
num = vsp.GetNumUnsteadyGroups();
print(num)
ug_id = vsp.FindUnsteadyGroup(0)
rpm_parm = vsp.FindParm(ug_id,"RPM","UnsteadyGroup")
print(rpm_parm)
vsp.SetParmVal(rpm_parm, 1000)


vsp.SetParmVal(prop_id,"Diameter", "Design", dia)
vsp.SetParmVal(prop_id,"NumBlade", "Design", n)

vsp.SetParmVal(prop_id,"Beta34", "Design", 0)
vsp.SetGeomName(prop_id, "TestProp")


vsp.Update()

for i in range(len(r_R)):
    vsp.SetParmVal(prop_id,"r_"+str(i), "Chord", r_R[i])
    vsp.SetParmVal(prop_id,"crd_"+str(i), "Chord", chord)
    vsp.SetParmVal(prop_id,"toc_"+str(i), "Thick", thick)

vsp.SetParmVal(prop_id,"r_1", "Twist", 0.75)
vsp.SetParmVal(prop_id,"tw_0", "Twist", twist)
vsp.SetParmVal(prop_id,"tw_1", "Twist", twist)
vsp.SetParmVal(prop_id,"tw_2", "Twist", twist)

for i in range(3):
    vsp.ChangeXSecShape(xsec_surf,i,vsp.XS_FILE_AIRFOIL)
    xsec = vsp.GetXSec(xsec_surf, i)
    vsp.ReadFileAirfoil(xsec, "n0012.dat")


vsp.WriteVSPFile("propGEOM.vsp3")
vsp.ExecAnalysis("VSPAEROComputeGeometry")
vsp.Update()

aname = "VSPAEROSweep"

V = 10;
a = 343;
M = V/a;
rho = 1.225;



vsp.SetIntAnalysisInput(aname, "PropBladesMode", [1],0)

vsp.SetIntAnalysisInput(aname,"GeomSet",[0],0)
vsp.SetIntAnalysisInput(aname,"WakeNumIter",[5],0)
vsp.SetDoubleAnalysisInput(aname, "MachStart", [0],0)
vsp.SetIntAnalysisInput(aname, "MachNpts", [1],0)
vsp.SetDoubleAnalysisInput(aname, "ReCref", [1e6],0)
vsp.SetIntAnalysisInput(aname, "ReCrefNpts", [1],0)
vsp.SetDoubleAnalysisInput(aname, "AlphaStart", [0],0)
vsp.SetIntAnalysisInput(aname, "AlphaNpts", [1],0)
vsp.SetDoubleAnalysisInput(aname, "Sref", [dia*chord],0)
vsp.SetDoubleAnalysisInput(aname, "cref", [chord],0)
vsp.SetDoubleAnalysisInput(aname, "bref", [dia],0)


vsp.SetDoubleAnalysisInput(aname, "Rho", [rho],0)
vsp.SetDoubleAnalysisInput(aname, "Vinf", [V],0)

vsp.SetIntAnalysisInput(aname, "AutoTimeStepFlag", [1],0)
vsp.SetIntAnalysisInput(aname, "AutoTimeNumRevs", [5],0)

vsp.Update()


vsp.ExecAnalysis(aname)
