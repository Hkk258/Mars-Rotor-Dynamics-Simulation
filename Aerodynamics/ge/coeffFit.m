% run("plotGraph.m")

AR = linspace(4,18,8);

coeff_a = [p_ar4(1); p_ar6(1); p_ar8(1); p_ar10(1); p_ar12(1); p_ar14(1); p_ar16(1); p_ar18(1)];
coeff_b = [p_ar4(2); p_ar6(2); p_ar8(2); p_ar10(2); p_ar12(2); p_ar14(2); p_ar16(2); p_ar18(2)];
coeff_c = [p_ar4(3); p_ar6(3); p_ar8(3); p_ar10(3); p_ar12(3); p_ar14(3); p_ar16(3); p_ar18(3)];

fit_a = polyfit(AR,coeff_a,7);
fit_b = polyfit(AR, coeff_b, 7);
fit_c = polyfit(AR, coeff_c, 7);

fittedValues_a = polyval(fit_a, AR);
fittedValues_b = polyval(fit_b, AR);
fittedValues_c = polyval(fit_c, AR);

a_fun = @(x) fit_a(1)*x^7 + fit_a(2)*x^6 + fit_a(3)*x^5 + fit_a(4)*x^4 + fit_a(5)*x^3 + fit_a(6)*x^2 + fit_a(7)*x + fit_a(8);
b_fun = @(x) fit_b(1)*x^7 + fit_b(2)*x^6 + fit_b(3)*x^5 + fit_b(4)*x^4 + fit_b(5)*x^3 + fit_b(6)*x^2 + fit_b(7)*x + fit_b(8);
c_fun = @(x) fit_c(1)*x^7 + fit_c(2)*x^6 + fit_c(3)*x^5 + fit_c(4)*x^4 + fit_c(5)*x^3 + fit_c(6)*x^2 + fit_c(7)*x + fit_c(8);



