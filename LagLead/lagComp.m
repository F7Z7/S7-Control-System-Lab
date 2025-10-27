n=10;
d=[1 1 0];

sys=tf(n,d);
[Gm,Pm,Wcg,Wcp]=margin(sys);

desired=45;
epsilon=5;
phinew=-180+desired+epsilon;
[mag,phase,w]=bode(sys);
mag = squeeze(mag);
phase = squeeze(phase);


w_new=interp1(phase,w,phinew);


wz=w_new/10;
T = 1 / wz;

Agcn= 20*log10(interp1(w, mag, w_new));

beta=10^(Agcn/20);

lag_comp = tf([T 1], [beta*T 1]);

 sys_comp = (sys*lag_comp);

 figure;
margin(sys);
hold on;
margin(sys_comp);
legend('Uncompensated','Lag Compensated');
grid on;
