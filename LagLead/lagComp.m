clc;
clear all;

%-------------------------------
% 1. Define the plant
%-------------------------------
num = [10];           % numerator of G(s)
den = [1 1 0];        % denominator of G(s)
G = tf(num, den);

%-------------------------------
% 2. Phase margin of uncompensated system
%-------------------------------
figure;
margin(G);
hold on;
[GM, PM, wgc, ~] = margin(G);
fprintf('Uncompensated system:\n');
fprintf('PM = %.2f deg, Gain crossover wgc = %.2f rad/s\n', PM, wgc);

%-------------------------------
% 3. Desired phase margin and safety margin
%-------------------------------
SM = input('Enter desired phase margin (deg): ');
epsilon = 5;                  % initial choice of safety margin
gamma_n = SM + epsilon;        % adjusted desired PM
phi_gcn = -180 + gamma_n;      % phase at new gain crossover

w = logspace(-1, 2, 1000);        
[mag, Ph] = bode(G, w);
magdb = 20*log10(squeeze(mag));
Ph = squeeze(Ph);


omega_gcn = interp1(Ph, w, phi_gcn);


Agcn = interp1(w, magdb, omega_gcn);
beta = 10^(Agcn/20);
fprintf('Lag compensator parameter beta = %.2f\n', beta);


Tz = 1/(10*omega_gcn);         
Tp = beta * Tz;                 

Dlag = tf([Tz 1], [Tp 1]);

Dlag


Gcomp = Dlag * G;
figure;
margin(Gcomp);
grid on;
title('Bode plot with Lag Compensator');

[GMc, PMc, wgc_comp, ~] = margin(Gcomp);
wgc_comp;
