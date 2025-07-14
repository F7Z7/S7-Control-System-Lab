n1=[1 6];
d1=[1 3 2 0];
sys1=tf(n1,d1);
subplot(3,2 ,1)
rlocus(sys1)
title('ROOT LOCUS OF SYSTEM WITH K<2')
xlabel('Re(S)')
ylabel('Im(S)')
sys1c=feedback(sys1,1);
subplot(3,2,2)
step(sys1c)
title('STEP RESPONCE OF SYSTEM  WITH K<2')
xlabel('Time')
ylabel('C(t)')
n2=[2 12];
d2=[1 3 2 0];
sys2=tf(n2,d2);
subplot(3,2,3)
rlocus(sys2)
title('ROOT LOCUS OF SYSTEM WITH K=2')
xlabel('Re(S)')
ylabel('Im(S)')
sys2c=feedback(1*sys2,1);
subplot(3,2,4)
step(sys2c)
title('STEP RESPONCE OF SYSTEM WITH K=2')
xlabel('Time')
ylabel('C(t)')
n3=[3 18];
d3=[1 3 2 0];
sys3=tf(n3,d3);
subplot(3,2,5)
rlocus(sys3)
title('ROOT LOCUS OF SYSTEM WITH K>2')
xlabel('Re(S)')
ylabel('Im(S)')
sys3c=feedback(1*sys3,1);
subplot(3,2,6)
step(sys3c)
title('STEP RESPONCE OF SYSTEM WITH K>2')
xlabel('Time')
ylabel('C(t)')
