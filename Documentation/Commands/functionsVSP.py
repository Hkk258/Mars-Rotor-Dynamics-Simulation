import openvsp as vsp

# Get all attributes of the module
all_items = dir(vsp)

# Filter for callable functions only (ignoring internal python stuff like __name__)
functions = [item for item in all_items if callable(getattr(vsp, item)) and not item.startswith("__")]

# Write them to a file so you can read them easily
with open("vsp_api_functions.txt", "w") as f:
    f.write(f"OpenVSP API Function List ({len(functions)} found)\n")
    f.write("="*40 + "\n")
    for func in functions:
        f.write(func + "\n")

print(f"List saved to 'vsp_api_functions.txt'. Check your folder!")