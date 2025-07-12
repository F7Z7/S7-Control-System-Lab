% Extract the timeseries object from the SimulationOutput
sim_ts = out.simout;

% Extract time and data
t = sim_ts.Time;
y = sim_ts.Data;

% Plot
figure;
plot(t, y, 'k', 'LineWidth', 2);
title('Output Voltage Step Response for Input Voltage=25V',  'Color', 'k');
legend("Output Voltage")
xlabel('Time (s)', 'FontSize', 10, 'Color', 'k');
ylabel('Voltage (V)', 'FontSize', 10, 'Color', 'k');
grid on;
