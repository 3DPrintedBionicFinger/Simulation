inlb2Nm = @(x) x*0.113;
Nm2inlb = @(x) x*8.8496;

K1 = inlb2Nm(0.15/180)
K2 = 3/2*K1
%K2 = inlb2Nm(1.28/180)
Ta_min = 227*K1

pulley_D = 0.01;
moment_arm = pulley_D/2;
Ta_max = 15 * moment_arm

if Ta_max < Ta_min
    Ta = Ta_max
else
    Ta = Ta_min
end

D = 1e-5
% Ta = .00891*15;

% resp = q_PIP.Data;
% ind = find(resp>=0.1*max(resp),1,'last');
% Tact = q_PIP.Time(ind) - 9
% 
% hold on
% figure
% yyaxis left
% plot(q_PIP)
% ylabel('PIP Joint Position (deg)')
% yyaxis right
% plot(signal_in*Fa)
% ylabel('Input Signal (Nm)')
% xlabel('Time (s)')
% title('Mechanism Actuation with Selected Components')