n1 = 10;
d1 = [1 6 5 0];   % s(s+1)(s+5) = s^3 + 6s^2 + 5s
sys1 = tf(n1, d1);

subplot(3,1,1)
margin(sys1)
title('Bode Plot of Original System : 10 / [s (s+1) (s+5)]')

n2 = 10;
d2 = conv([1 10], [1 6 5 0]);  
sys2 = tf(n2, d2);

subplot(3,1,2)
margin(sys2)
title('Bode Plot with Addition of Pole : 10 / [s (s+1) (s+5) (s+10)]')

n3 = [10 20];  
d3 = [1 6 5 0];
sys3 = tf(n3, d3);

subplot(3,1,3)
margin(sys3)
title('Bode Plot with Addition of Zero : 10 (s+2) / [s (s+1) (s+5)]')
