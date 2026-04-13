run("read.m");


f = @(p,z) 1+(p(1)./z.^2) + (p(2)./(p(3)+z.^2));
%p(1) = a
% p(2) = b
% p(3) = c
x0 = [0,0,0];

p_ar4 = lsqcurvefit(f,x0,xdata,ydata_ar4);
yfit_ar4 = f(p_ar4,xdata);

p_ar6 = lsqcurvefit(f,x0,xdata,ydata_ar6);
yfit_ar6 = f(p_ar6,xdata);

p_ar8 = lsqcurvefit(f,x0,xdata,ydata_ar8);
yfit_ar8 = f(p_ar8,xdata);

p_ar10 = lsqcurvefit(f,x0,xdata,ydata_ar10);
yfit_ar10 = f(p_ar10,xdata);

p_ar12 = lsqcurvefit(f,x0,xdata,ydata_ar12);
yfit_ar12 = f(p_ar12,xdata);

p_ar14 = lsqcurvefit(f,x0,xdata,ydata_ar14);
yfit_ar14 = f(p_ar14,xdata);

p_ar16 = lsqcurvefit(f,x0,xdata,ydata_ar16);
yfit_ar16 = f(p_ar16,xdata);

p_ar18 = lsqcurvefit(f,x0,xdata,ydata_ar18);
yfit_ar18 = f(p_ar18,xdata);


