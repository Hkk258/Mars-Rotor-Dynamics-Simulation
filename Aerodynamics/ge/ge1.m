clc;clear all;

f = @(p,z) 1+(p(1)./z.^2) + (p(2)./(p(3)+z.^2));

T = readtable("AR4.xlsx");

xdata = T.h_b;
ydata = T.CL_IGE_CL_OGE;

x0 = [0,0,0];

[p_opt,res] = lsqcurvefit(f,x0,xdata,ydata);

fprintf('a = %.4f\n', p_opt(1));
fprintf('b = %.4f\n', p_opt(2));
fprintf('c = %.4f\n', p_opt(3));

y_fit = f(p_opt,xdata);

yres = (y_fit - ydata);

figure;
tiledlayout(1,2)
nexttile
plot(xdata,ydata,'ro','MarkerFaceColor','r');
hold on;
plot(xdata,y_fit,'b-','LineWidth',2);
hold off;
legend('True','Fit');
xlabel('x');
ylabel('y');
grid on;






