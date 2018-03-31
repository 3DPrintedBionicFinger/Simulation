K_min = 0.014; % K where actuation time = 1.5s
K_max = 0.065; % K where Ta = Tmax
E = 207e3; % Mpa
q = 110; % displacement
T = q/360; % Number of turns
width = 8; % mm
D = 14; % mm

d_max = ((K_max*q*10.8*width*D)/E*T)^(1/5)
d_min = ((K_min*q*10.8*width*D)/E*T)^(1/5)