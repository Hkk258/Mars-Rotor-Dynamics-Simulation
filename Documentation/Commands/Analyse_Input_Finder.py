import openvsp as vsp

NoAnalyse = vsp.GetNumAnalysis()
print("Number of analyses:", NoAnalyse)

analysis_names = vsp.ListAnalysis()
vsp.PrintAnalysisDocs(analysis_names[15])
vsp.PrintAnalysisInputs(analysis_names[15])

for i in range(len(analysis_names)):
    print(f"Analysis {i}: {analysis_names[i]}")

aname = analysis_names[15]
inputName = vsp.GetAnalysisInputNames(aname)
for i in range(len(inputName)):
    print(f"Input {i} for {aname}: {inputName[i]} : {vsp.GetAnalysisInputType(aname, inputName[i])}")