clc;clear all

files = dir('*.xlsx');

my_data = cell(length(files),1);

for i = 1:length(files)
    filename = files(i).name;
    my_data{i} = readtable(filename);
    fprintf('Loaded: %s\n', filename);
end

xdata = my_data{1}.h_b;

ydata_ar4 = my_data{6}.CL_IGE_CL_OGE;
ydata_ar6 = my_data{7}.CL_IGE_CL_OGE;
ydata_ar8 = my_data{8}.CL_IGE_CL_OGE;
ydata_ar10 = my_data{1}.CL_IGE_CL_OGE;
ydata_ar12 = my_data{2}.CL_IGE_CL_OGE;
ydata_ar14 = my_data{3}.CL_IGE_CL_OGE;
ydata_ar16 = my_data{4}.CL_IGE_CL_OGE;
ydata_ar18 = my_data{5}.CL_IGE_CL_OGE;