%%BODe PLOT=> 100/s(s+100)
n=100;
d=[1 10 0];
sys=tf(n,d);
margin(sys)

%%
%Nyquist
n=1;
d1=conv([1 1],[1 2]);
d=conv([1 0],d1);
sys=tf(n,d);
nyquist(sys)
