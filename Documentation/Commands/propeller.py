import openvsp as vsp

# --- Setup for demonstration ---
vsp.VSPRenew()
prop_id = vsp.AddGeom("PROP", "")
# -------------------------------

# Define the filename
filename = "propeller_parameters.txt"

print(f"Scanning Geometry: {prop_id}...")
print(f"Writing results to {filename}")

# Open the file in 'w' (write) mode
with open(filename, "w") as f:
    # Write the Header
    f.write(f"Scanning Geometry: {prop_id}\n")
    f.write("-" * 60 + "\n")
    f.write(f"{'PARAMETER NAME':<25} | {'GROUP NAME':<15} | {'VALUE'}\n")
    f.write("-" * 60 + "\n")

    # 1. Get the list of every parameter ID for this geometry
    parm_ids = vsp.GetGeomParmIDs(prop_id)

    # 2. Loop through them and extract details
    for pid in parm_ids:
        # Get the Name (e.g., "Span")
        p_name = vsp.GetParmName(pid)
        
        # Get the Group (e.g., "Plan" or "XSec_1")
        p_group = vsp.GetParmGroupName(pid)
        
        # Get the current Value
        p_val = vsp.GetParmVal(pid)
        
        # Write to file (Note the \n at the end for a new line)
        f.write(f"{p_name:<25} | {p_group:<15} | {p_val}\n")

    f.write("-" * 60 + "\n")

print("Done! Check your folder for 'wing_parameters.txt'")