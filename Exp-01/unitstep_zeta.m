clc,clear vars
%this is for differentiating each plots with individual markers and width
line_styles = {'-', '--', '-.', ':', '-'};
line_widths = [2, 2.5, 3, 1.5, 2];

l=100^-3;
c=10.13^-9;
num=10^4*pi; 
t = 0:0.000005:0.001;
%for legend
legend_entries = {};

figure;
hold on;
zeta_values=0.2:0.2:1.2;

for i=1:length(zeta_values) %same as for z_values=0.2:0.2:1.2
    zeta=zeta_values(i);
    d=[1 2*zeta*n n^2];
    sys=tf(n^2,d);
    [y, t] = step(sys,t); 
    
    %Miscallenous->for setting individual width and styles
     plot(t, y, ...
         'LineStyle', line_styles{mod(i-1, length(line_styles)) + 1}, ...
         'LineWidth', line_widths(mod(i-1, length(line_widths)) + 1));

    legend_entries{end+1} = ['zeta = ', num2str(zeta)];
    
   

end
legend(legend_entries, 'Location', 'southeast', 'FontSize', 10, 'Box', 'on');
xlabel('Time (s)');
ylabel('Amplitude');
title('Step Response of Second Order RLC Series with Varying Zeta');
grid on;
hold off;