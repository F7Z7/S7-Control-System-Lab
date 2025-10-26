figure;

% Q1
n1 = [10 0];
d1 = conv(conv([1 2], [1 2]), [1 10]);
n2 = 6;
d2 = conv(conv([1 1], [1 2]), [1 0]);
n3 = 100;
d3 = conv([1 10], [1 0]);
n4 = 8;
d4 = conv(conv([1 0], [1 1]), [1 4]);
n5 = 2 * sqrt(3);
d5 = conv([1 0], [1 1]);
n6 = conv([1 1], [0 10]);
d6 = conv([1 2], [1 4]);

n = {n1, n2, n3, n4, n5, n6};
d = {d1, d2, d3, d4, d5, d6};

for i=1:6
    sys=tf(n{i},d{i});

    subplot(3,2,i);
    nyquist(sys);

    
end
    