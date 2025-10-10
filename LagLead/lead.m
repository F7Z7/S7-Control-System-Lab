n = 10;
d = [1 1 0];
sys = tf(n,d);                 % Plant: 10/(s^2 + s)

[GM,PM,wgm,wpm] = margin(sys); % Original margins

SM = 45;                       % Desired phase margin
phim = SM - PM + 5;            % Additional phase needed (+5° safety)

alpha1 = (1 - sin(phim*pi/180)) / (1 + sin(phim*pi/180));

w = logspace(0,2,100);
[mag,~] = bode(sys,w);
magdb = squeeze(20*log10(mag));

% Find frequency where |G(jw)| = -20log10(1/sqrt(alpha1))
target = -20*log10(1/sqrt(alpha1));
wm = interp1(magdb,w,target);

tau = 1/(wm*sqrt(alpha1));

D = tf([tau 1],[alpha1*tau 1]); % Lead compensator

margin(D*sys)   % Bode plot of compensated system
