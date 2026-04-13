import openvsp as vsp

# Add the wing
wing_id = vsp.AddGeom("WING")

# Rename the wing component 
vsp.SetGeomName(wing_id ,"Main_Wing")

# Set symmetry for the wing 
vsp.SetParmVal(wing_id, "Sym_Planar_Flag", "Sym", vsp.SYM_XZ)

# API inform vsp that will use these parameters to determine the wing dimensions
vsp.SetDriverGroup(wing_id, 1, vsp.SPAN_WSECT_DRIVER , vsp.TAPER_WSECT_DRIVER, vsp.ROOTC_WSECT_DRIVER)


vsp.SetParmVal(wing_id, "SectTess_U", "XSec_1", 20)
vsp.SetParmVal(wing_id, "Span", "XSec_1", 63.63)
vsp.SetParmVal(wing_id, "Taper", "XSec_1", 0.45)
vsp.SetParmVal(wing_id, "Root_Chord", "XSec_1", 16.672)
vsp.SetParmVal(wing_id, "Sweep", "XSec_1", 45.0)
vsp.SetParmVal(wing_id, "Sweep_Location", "XSec_1", 0.25)

# Update the geometry
vsp.Update()

# for the root airfoil 
# Get the XSecSurf ID for wing and XSecSurf 0
xsec_surf = vsp.GetXSecSurf(wing_id, 0)

# Change the shape of XSec 0, identified by an XSecSurf ID and XSec index to airfoil type
vsp.ChangeXSecShape(xsec_surf, 0, vsp.XS_FILE_AIRFOIL)

# Get Xsec ID for a particular XSecSurf at given index
xsec0 = vsp.GetXSec(xsec_surf, 0)

#  Read the airfoil file 
vsp.ReadFileAirfoil(xsec0, "NACA63A012.af")


# for the tip airfoil 
# change the section type
vsp.ChangeXSecShape(xsec_surf, 1, vsp.XS_FILE_AIRFOIL)

# get the section airfoil
xsec1 = vsp.GetXSec(xsec_surf, 1)

#  Read the airfoil file 
vsp.ReadFileAirfoil(xsec1, "NACA63A012.af")

vsp.Update()

# Save the file 
vsp.WriteVSPFile("SWEEP_WING.vsp3" , vsp.SET_ALL)

# clear all the data in the code
vsp.ClearVSPModel()

# # read the file again 
vsp.ReadVSPFile("SWEEP_WING.vsp3")

compGeom = "VSPAEROComputeGeometry"
print("00000000000000000000000")

vsp.SetAnalysisInputDefaults(compGeom)

compGeom_results = vsp.ExecAnalysis(compGeom)
# vsp.ExportFile()
# vsp.EXPORT_VSPGEOM

# compGeom_results = vsp.ExportFile(compGeom , vsp.SET_ALL ,vsp.EXPORT_VSPGEOM )


myAnalysis = "VSPAEROSweep"

vsp.SetAnalysisInputDefaults(myAnalysis)

analysis_method = [vsp.VORTEX_LATTICE]
vsp.SetIntAnalysisInput(myAnalysis, "AnalysisMethod", analysis_method)

Sref = [2121.68]
vsp.SetDoubleAnalysisInput(myAnalysis, "Sref", Sref)

bref = [127.26]
vsp.SetDoubleAnalysisInput(myAnalysis, "bref", bref)

cref = [16.672]
vsp.SetDoubleAnalysisInput(myAnalysis, "cref", cref)

AlphaStart = [0.0]
vsp.SetDoubleAnalysisInput(myAnalysis, "AlphaStart", AlphaStart)

AlphaEnd = [9.0]
vsp.SetDoubleAnalysisInput(myAnalysis, "AlphaEnd", AlphaEnd)

nAlpha = 10
AlphaNpts = [nAlpha]
vsp.SetIntAnalysisInput(myAnalysis, "AlphaNpts", AlphaNpts)


allResults = vsp.ExecAnalysis(myAnalysis)

vsp.WriteResultsCSVFile(allResults, "Results.csv")


print("The analysis is completed")