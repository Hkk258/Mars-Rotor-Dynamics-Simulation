function C_D=Cd(x,r,theta,cddata)

lambda=x;
phi=lambda/r;
alpha=theta-phi;

C_D=interp1(cddata(:,1),cddata(:,2),alpha*180/pi);

end