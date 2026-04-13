import csv
import os

file_name = "Results_Output.txt"
if os.path.exists(file_name):
    os.remove(file_name)
else:
    print(f"No existing results file named {file_name} found. Proceeding with analysis.")


def read_results(file_name):

    with open(file_name, 'r') as f:
        reader = csv.reader(f)
        data = list(reader)
    with open('Results_Output.txt', 'a') as f:
        f.write(data[3][0] + '\n')
    
    CL_list = []
    CD_list = []
    #L_D = []
    with open('Results_Output.txt', 'r') as f: 
        for i in f:
            values = i.split()
            CL_list.append(float(values[5]))
            CD_list.append(float(values[9]))
    global L
    global D
    global LD
    L = CL_list
    D = CD_list
    #LD = L_D
    return L, D, #LD

