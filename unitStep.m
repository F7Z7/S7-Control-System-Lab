clc,clear vars
l=100^-3;
c=10.13^-9;
n=10^4*pi;
for r=1500:1000:6500
    zeta=((r/2)*(c/l)^1/2);
d=[1 2*zeta*n n^2];
sys=tf(n^2,d);
step(sys)
hold on
end


