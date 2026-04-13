import openvsp as vsp

vsp.VSPRenew()

wing_id = vsp.AddGeom("WING")
vsp.SetParmVal(wing_id, "TotalSpan", "WingGeom", 25)
vsp.SetParmVal(wing_id, "TotalChord", "WingGeom", 5)



# 4. IMPORTANT: Force VSP to recalculate the shape
vsp.Update()


# 5. Save to verify
vsp.WriteVSPFile("FixedWing.vsp3")
print("Saved FixedWing.vsp3")