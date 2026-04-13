clc; clear all;

syms lamda

R=0.92/2;
omega = 500*2*pi/60;
rho = 1.225;
c=0.04;
Nb=2;
sigma = (Nb*c)/(pi*R);
slope = 5.73;
N=10;
r = linspace(0.01,1,N);
theta = 5*pi/180;
lam=zeros(1,N);
cl=@(x)(slope*x);
f=@(x,r)(1/2*sigma*cl(theta-x/r)*r^2-4*x^2 *r);
for i = 1:N
       
       a = 8*r(i);
       b = sigma*slope*r(i);
       c = sigma*slope*theta*r(i)^2;
       eqn = a*lamda^2 + b*lamda - c == 0;
       soltemp=solve(eqn,lamda);
       soltemp=double(soltemp);
       lambdasol(i)=fsolve(@(x)f(x,r(i)),0.01);
       if soltemp == 0
           lam(i) = 0;
       else
           lam(i) = soltemp(2);
       end
   
end

dCt = 4.*lam.^2.*r;

C_T = trapz(r,dCt);
C_Tfs = trapz(r,4*lambdasol.^2.*r)
T = C_T*pi*R^4*rho*omega^2;

disp(['Computed C_T: ', num2str(C_T)]);
disp(['Computed T: ', num2str(T)]);
