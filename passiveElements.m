clc; clear; close all;

l = 25e-3;     
c = 1e-6;      
zetas = [0 0.5 1];
titles = {'Undamped', 'Underdamped', 'Critically Damped'};

wn = 1 / sqrt(l * c);

for i = 1:length(zetas)
    zeta = zetas(i);
    num = [wn^2];
    den = [1 2*zeta*wn wn^2];
    sys = tf(num, den);
    
    subplot(1, 3, i);
    step(sys);
    title(titles{i});
    grid on;
end
