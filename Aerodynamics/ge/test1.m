clc;
x = 18;

a = a_fun(x);
b = b_fun(x);
c = c_fun(x);

p = [a b c];
clRatio = f(p,xdata);
plot(xdata,clRatio)