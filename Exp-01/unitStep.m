clc,clear vars
%this is for differentiating each plots with individual markers and width
line_styles = {'-', '--', '-.', ':', '-'};
line_widths = [2, 2.5, 3, 1.5, 2];

l=100^-3;
c=10.13^-9;
n=10^4*pi;

%for legend
legend_entries = {};

figure;
hold on;
r_values = 1500:1000:6500; 

for i=1:length(r_values) %same as for r=1500:1000:6500
    r=r_values(i);

    zeta=((r/2)*(c/l)^1/2);
    d=[1 2*zeta*n n^2];
    sys=tf(n^2,d);
    [y, t] = step(sys); 
    
    %Miscallenous->for setting individual width and styles
     plot(t, y, ...
         'LineStyle', line_styles{mod(i-1, length(line_styles)) + 1}, ...
         'LineWidth', line_widths(mod(i-1, length(line_widths)) + 1));

    legend_entries{end+1} = ['R = ', num2str(r), ' \Omega'];
    
   

end
legend(legend_entries, 'Location', 'southeast', 'FontSize', 10, 'Box', 'on');
xlabel('Time (s)');
ylabel('Amplitude');
title('Step Response of Second Order RLC Series by varying R');
grid on;
hold off;