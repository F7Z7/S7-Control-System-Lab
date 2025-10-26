n1 = 10;
d1 = [1 6 5 0];   % s(s+1)(s+5) = s^3 + 6s^2 + 5s
n2 = 10;
d2 = conv([1 10], [1 6 5 0]);  
n3 = [10 20];  
d3 = [1 6 5 0];
n = {n1, n2, n3}; 
d = {d1, d2, d3};
titles = {
    'Bode Plot of Original System : 10 / [s (s+1) (s+5)]',
    'Bode Plot with Addition of Pole : 10 / [s (s+1) (s+5) (s+10)]',
    'Bode Plot with Addition of Zero : 10 (s+2) / [s (s+1) (s+5)]'
};
numSys = length(n);  
for i = 1:numSys
    subplot(1, numSys, i);
    margin(tf(n{i}, d{i}));
    
end


