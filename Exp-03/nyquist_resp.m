figure;

% Q1
n1 = [10 0];
d1 = conv(conv([1 2], [1 2]), [1 10]);
sys1 = tf(n1, d1);
subplot(3, 2, 1);
nyquist(sys1);
title('Q1');

% Q2
n2 = 6;
d2 = conv(conv([1 1], [1 2]), [1 0]);
sys2 = tf(n2, d2);
subplot(3, 2, 2);
nyquist(sys2);
title('Q2');

% Q3
n3 = 100;
d3 = conv([1 10], [1 0]);
sys3 = tf(n3, d3);
subplot(3, 2, 3);
nyquist(sys3);
title('Q3');

% Q4
n4 = 8;
d4 = conv(conv([1 0], [1 1]), [1 4]);
sys4 = tf(n4, d4);
subplot(3, 2, 4);
nyquist(sys4);
title('Q4');

% Q5
n5 = 2 * sqrt(3);
d5 = conv([1 0], [1 1]);
sys5 = tf(n5, d5);
subplot(3, 2, 5);
nyquist(sys5);
title('Q5');

% Q6
n6 = conv([1 1], [0 10]);
d6 = conv([1 2], [1 4]);
sys6 = tf(n6, d6);
subplot(3, 2, 6);
nyquist(sys6);
title('Q6');
