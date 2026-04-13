f = @(p,x) p(1)*exp(-p(2)*x);

xdata = linspace(0,3,20);
y_true = 5*exp(-2*xdata);

ydata = y_true+0.1*randn(size(xdata));

x0 = [0,0];

[p_best,res] = lsqcurvefit(f,x0,xdata,ydata);

fprintf("True a:5.0, Found a:%.4f\n",p_best(1));
fprintf("True b:2.0, Found b:%.4f\n",p_best(2));

y_fit = f(p_best,xdata);

figure;
plot(xdata,ydata,'ro','MarkerFaceColor','r');
hold on;
plot(xdata,y_fit,'b-','LineWidth',2);
hold off;
legend('Noise','Fit');
xlabel('x');
ylabel('y');
title('Data Fitting with Exponential Model');
grid on;