close all
plot(rad2deg(q_PIP.Data))
plot(q_PIP.Time,rad2deg(q_PIP.Data))
ylabel('Output Motion [deg]')
hold on
yyaxis right
plot(q_PIP.Time,in_PIP.Data)
ylabel('Input Force [N]')

xlabel('Time [s]')

title('PIP Joint Square Pulse Response')

figure
plot(rad2deg(q_DIP.Data))
plot(q_DIP.Time,rad2deg(q_DIP.Data))
ylabel('Output Motion [deg]')
hold on
yyaxis right
plot(q_DIP.Time,in_DIP.Data)
ylabel('Input Force [N]')

xlabel('Time [s]')

title('DIP Joint Square Pulse Response')

