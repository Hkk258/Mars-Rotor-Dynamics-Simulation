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
r = linspace(0,1,N);
theta = 5*pi/180;
lam=zeros(1,N);

for i = 1:N
       
       a = 8*r(i);
       b = sigma*slope*r(i);
       c = sigma*slope*theta*r(i)^2;
       eqn = a*lamda^2 + b*lamda - c == 0;
       soltemp=solve(eqn,lamda);
       soltemp=double(soltemp);
       
       if soltemp == 0
           lam(i) = 0;
       else
           lam(i) = soltemp(2);
       end
   
end

dCt = 4.*lam.^2.*r;

C_T = trapz(r,dCt);
T = C_T*pi*R^4*rho*omega^2;

fprintf("C_T = %.5f \n",C_T);
fprintf("Thrust = %.3fN \n",T);
