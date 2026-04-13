import openvsp as vsp

# 1. Get every attribute of the openvsp module
all_attributes = dir(vsp)

# 2. Filter out internal Python stuff (items starting with "__")
#    and keep only the callable functions
commands = [x for x in all_attributes if not x.startswith("__")]

# 3. Write them to a file
filename = "All_OpenVSP_Commands.txt"
with open(filename, "w") as f:
    f.write(f"List of OpenVSP Commands ({len(commands)} found)\n")
    f.write("="*40 + "\n")
    
    # Sort them alphabetically so they are easy to find
    for cmd in sorted(commands):
        f.write(f"{cmd}\n")

print(f"Success! I found {len(commands)} commands.")
print(f"Open '{filename}' to see the full list.")