clc;clear all;

syms r
omega = 52.36; %rad/s
rho = 1.225; %kg/m3
c = 0.04; %chord in m
b = 2; %number of blades
R = 0.395; % Radius in m
y = 0.2; % distance from root to element in m

U_T = omega*y; % Tangential velocity
U_P = 1; % perpendicular velocity in m/s
psi = atan(U_P/U_T); % induced angle of attack or relative inflow angle


lamda = psi*(y/R); % inflow ratio
sigma = (b*c)/(pi*R); % solidity

C_T = 4 * int(lamda^2*r,r,0,1); % Coeff of Thrust
C_T = double(C_T); % Convert symbolic result to numeric

C_L = 6 * C_T * (pi*R) / (b*c); % Coeff of lift

T = C_L * (b*c/2) * int((omega*r)^2,r,0,R); % Thrust

Ct_sigma = C_T/sigma; % Blade loading coeff

fprintf("Ct = %f\n",C_T);
fprintf("Cl = %f\n",C_L);
fprintf("T = %f\n",T);
fprintf("C_T / Sigma = %f\n",Ct_sigma);