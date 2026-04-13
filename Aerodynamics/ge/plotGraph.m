run("main.m")

figure;
tiledlayout(2,4);

% %Tile 1
nexttile;
scatter(xdata, ydata_ar4, 'filled', 'MarkerFaceColor', 'g');
hold on
plot(xdata,yfit_ar4,'b-','LineWidth',2);
hold off;
legend('Data Points','Fitted Curve');
xlabel('h/b');
ylabel('CL_IGE/OGE');
title("AR4")
grid on;

%Tile 2
nexttile;
scatter(xdata, ydata_ar6, 'filled', 'MarkerFaceColor', 'g');
hold on;
plot(xdata, yfit_ar6, 'r-', 'LineWidth', 2);
hold off;
legend('Data Points', 'Fitted Curve');
xlabel('h/b');
ylabel('CL_IGE/OGE');
title("AR6");
grid on;

%Tile 3
nexttile;
scatter(xdata, ydata_ar8, 'filled', 'MarkerFaceColor', 'r');
hold on;
plot(xdata, yfit_ar8, 'm-', 'LineWidth', 2);
hold off;
legend('Data Points', 'Fitted Curve');
xlabel('h/b');
ylabel('CL_IGE/OGE');
title("AR8");
grid on;

%Tile 4
nexttile;
scatter(xdata, ydata_ar10, 'filled', 'MarkerFaceColor', 'b');
hold on;
plot(xdata, yfit_ar10, 'c-', 'LineWidth', 2);
hold off;
legend('Data Points', 'Fitted Curve');
xlabel('h/b');
ylabel('CL_IGE/OGE');
title("AR10");
grid on;

%Tile 5
nexttile;
scatter(xdata, ydata_ar12, 'filled', 'MarkerFaceColor', 'm');
hold on;
plot(xdata, yfit_ar12, 'y-', 'LineWidth', 2);
hold off;
legend('Data Points', 'Fitted Curve');
xlabel('h/b');
ylabel('CL_IGE/OGE');
title("AR12");
grid on;

%Tile 6
nexttile;
scatter(xdata, ydata_ar14, 'filled', 'MarkerFaceColor', 'w');
hold on;
plot(xdata, yfit_ar14, 'c-', 'LineWidth', 2);
hold off;
legend('Data Points', 'Fitted Curve');
xlabel('h/b');
ylabel('CL_IGE/OGE');
title("AR14");
grid on;

%Tile 7
nexttile;
scatter(xdata, ydata_ar16, 'filled', 'MarkerFaceColor', 'y');
hold on;
plot(xdata, yfit_ar16, 'g-', 'LineWidth', 2);
hold off;
legend('Data Points', 'Fitted Curve');
xlabel('h/b');
ylabel('CL_IGE/OGE');
title("AR16");
grid on;

%Tile 8
nexttile;
scatter(xdata, ydata_ar18, 'filled', 'MarkerFaceColor', 'g');
hold on;
plot(xdata, yfit_ar18, 'b-', 'LineWidth', 2);
hold off;
legend('Data Points', 'Fitted Curve');
xlabel('h/b');
ylabel('CL_IGE/OGE');
title("AR18");
grid on;