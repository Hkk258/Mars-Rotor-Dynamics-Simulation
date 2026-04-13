function y=lambdafn(x,r,sigma,theta,cldata)

lambda=x;
phi=lambda/r;
alpha=theta-phi;

Cl=interp1(cldata(:,1),cldata(:,2),alpha*180/pi);
y=4*lambda^2-sigma/2*Cl^2*r;

end