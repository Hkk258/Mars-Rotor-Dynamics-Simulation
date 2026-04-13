import openvsp as vsp


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
vsp.WriteVSPFile("Wing_woGE.vsp3")

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


vsp.SetIntAnalysisInput(aname, "GroundEffectToggle", [0],0)
vsp.Update()

vsp.ExecAnalysis(aname)


