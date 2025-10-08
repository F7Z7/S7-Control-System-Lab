A=[-2.478 5.31;-0.067 -0.45];  
B=[0;1]; 
C=[1 0]; 
D=0; 
Co=ctrb(A,B);  
% Number of uncontrollable states 
unco=length(A)-rank(Co);
P=[ -6+7i -6-7i ]; %(Desired poles of closed loop system) 
K = place(A,B,P); %use place or acker for pole placement 
N = inv(-C * inv(A - B*K) * B);

