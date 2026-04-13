x = [1;2;3];
y = [1;3;2];

p = polyfit(x,y,1);

m = p(1);
c = p(2);

fprintf('slope(m):%.4f\n',m);
fprintf('intercept(c):%.4f\n',c);

y_fit = polyval(p,x);

plot(x,y,'ro','MarkerSize',10,'LineWidth',2);
hold on;
plot(x, y_fit, 'b-', 'LineWidth', 2);
xlabel('X-axis');
ylabel('Y-axis');
title('Linear Fit');
legend('Data Points', 'Fitted Line');
hold off;
