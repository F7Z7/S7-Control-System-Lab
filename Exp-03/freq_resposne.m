% Define common denominator
d = conv(conv([1 1], [1 5]), [1 0]);  % Denominator doesn't change

% --- System 1 ---
n1 = 10;
sys1 = tf(n1, d);
figure;                      % Open new figure
margin(sys1);                % Plot gain/phase margin for sys1
%title('System 1: n = 10');

% --- System 2 ---
n2 = 29.999;
sys2 = tf(n2, d);
figure;                      % Open new figure
margin(sys2);
%title('System 2: n = 29.999');

% --- System 3 ---
n3 = 100;
sys3 = tf(n3, d);
figure;                      % Open new figure
margin(sys3);
%title('System 3: n = 100');
