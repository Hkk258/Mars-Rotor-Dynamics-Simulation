import openvsp as vsp

# --- Paste the helper function here ---
def set_parm_anywhere(geom_id, parm_name, value):
    """
    Searches for a parameter by name anywhere in the geometry 
    and sets its value. Ignores Group names.
    """
    # 1. Get every single parameter ID for this geometry
    all_parm_ids = vsp.GetGeomParmIDs(geom_id)
    
    found = False
    for parm_id in all_parm_ids:
        # Check the name of the current parameter
        current_name = vsp.GetParmName(parm_id)
        
        # 2. If the name matches, set the value and stop searching
        if current_name == parm_name:
            vsp.SetParmVal(parm_id, value)
            
            # (Optional) Print where it was found so you learn
            group = vsp.GetParmGroupName(parm_id)
            print(f"Found '{parm_name}' in group '{group}' -> Set to {value}")
            
            found = True
            break 
            
    if not found:
        print(f"WARNING: Could not find parameter named '{parm_name}'")

# --- Main Code ---
vsp.VSPRenew()

# 1. Create the Wing
wing_id = vsp.AddGeom("WING", "")
fuse_id = vsp.AddGeom("FUSELAGE", "")

# 2. Use the simplified syntax!
# No groups required. Just (ID, Name, Value)

# VSP will find "TotalSpan" whether it's in Design or Plan
set_parm_anywhere(wing_id, "TotalSpan", 30.0) 

# VSP will find "Root_Chord" automatically
set_parm_anywhere(wing_id, "Root_Chord", 5.0)

# VSP will find "Sweep" (usually hidden in XSec_1) automatically
set_parm_anywhere(wing_id, "Sweep", 45.0)

# 3. Update and Save
vsp.Update()
vsp.WriteVSPFile("EasyMode.vsp3")
print("Done.")