tiledlayout(1,3)

%Tile 1
nexttile
scatter(AR,coeff_a,'yellow','filled')
hold on
plot(AR, fittedValues_a, 'r-', 'LineWidth', 1.5);
hold off
legend('True a','Fitted a')
title('Coeff_a');
xlabel('AR');
ylabel('Coefficient a');
grid on;

%Tile 2
nexttile
scatter(AR, coeff_b, 'blue', 'filled')
hold on
plot(AR, fittedValues_b, 'g-', 'LineWidth', 1.5);
hold off
legend('True b', 'Fitted b')
title('Coeff_b');
xlabel('AR');
ylabel('Coefficient b');
grid on;

%Tile 3
nexttile
scatter(AR, coeff_c, 'magenta', 'filled')
hold on
plot(AR, fittedValues_c, 'b-', 'LineWidth', 1.5);
hold off
legend('True c', 'Fitted c')
title('Coeff_c');
xlabel('AR');
ylabel('Coefficient c');
grid on;

% Display the tiled layout
sgtitle('Polynomial Fitting of Coefficients');
