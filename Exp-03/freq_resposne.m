clc;
clear;

% Denominator
d = conv(conv([1 1], [1 5]), [1 0]);  % (s+1)(s+5)s

% System gains
k_values = [10, 29.999, 100];

figure;  % Single figure for all subplots

for i = 1:length(k_values)
    k = k_values(i);
    sys = tf(k, d);
    
    subplot(3,2,i);        % 3 rows, 1 column, current plot
    margin(sys);           % Bode plot with margins
    
    % Optional: Label subplot with k value
    text(0.1,0.1,sprintf('k = %.3f',k),'Units','normalized','FontSize',10,'FontWeight','bold');
end
