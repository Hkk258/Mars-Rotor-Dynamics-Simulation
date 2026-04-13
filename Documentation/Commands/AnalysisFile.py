import openvsp as vsp

# Define the output filename
filename = "Analysis_Output.txt"

print(f"Writing analysis info to {filename}...")

# Open the file in 'w' (write) mode
with open(filename, "w") as f:
    
    # 1. Get Totals
    NoAnalyse = vsp.GetNumAnalysis()
    # Write to file (add \n for new line)
    f.write(f"Number of analyses: {NoAnalyse}\n")
    f.write("-" * 40 + "\n")

    # 2. List All Analyses
    analysis_names = vsp.ListAnalysis()
    f.write("LIST OF ANALYSES:\n")
    for i in range(len(analysis_names)):
        f.write(f"Analysis {i}: {analysis_names[i]}\n")
    
    f.write("-" * 40 + "\n")

    # 3. Details for specific Analysis (Index 16)
    # Check if index 16 exists to prevent crashing
    target_idx = 16
    
    if target_idx < len(analysis_names):
        aname = analysis_names[target_idx]
        f.write(f"DETAILS FOR ANALYSIS: {aname}\n")
        f.write("-" * 40 + "\n")
        
        # Get Inputs for this specific analysis
        inputName = vsp.GetAnalysisInputNames(aname)
        
        # Header for the table
        f.write(f"{'INDEX':<6} | {'INPUT NAME':<30} | {'TYPE CODE'}\n")
        f.write("-" * 60 + "\n")

        # Loop through inputs and write them
        for i in range(len(inputName)):
            itype = vsp.GetAnalysisInputType(aname, inputName[i])
            
            # Decode the type for clarity (Optional helper info)
            # 0=Int, 1=Double, 2=Bool, 3=String, 4=Vec3D
            type_str = f"{itype}"
            if itype == 1: type_str += " (INT)"
            elif itype == 3: type_str += " (STRING)"
            elif itype == 2: type_str += " (DOUBLE)"

            f.write(f"{i:<6} | {inputName[i]:<30} | {type_str}\n")
            
    else:
        f.write(f"Error: Index {target_idx} does not exist in this version.\n")

print("Done! Check 'Analysis_Output.txt' in your folder.")