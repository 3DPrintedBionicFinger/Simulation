load('S2_E3_A1.mat');

while (true)


emg44 = emg(stimulus==44,:);
data_sample = emg44(:,1);
f44 = force(stimulus==44,:);
f44index = f44(:,4); % 1=pinkie.. (5,6)=thumb

m = size(data_sample,1);
T = 1 / 2e3;
t = linspace(0, m * T, m);
% t = T * 0:size(emg44_1,1)-1;

%d = 0.995;
pause
d = input('Enter d:')
close all
tmp=abs(data_sample);
tmpf99(1)=tmp(1);
for i=2:length(tmp)
    tmpf99(i)=d*tmpf99(i-1)+(1-d)*tmp(i);
end

figure
plot(t,tmpf99)

ylabel('Signal Strength');
hold on
yyaxis right
plot(t,f44index)
ylabel('Force [N]');

figure
scatter(tmpf99,f44index,'.');
Fit = polyfit(tmpf99.',f44index,1);
hold on
coef_fit = polyfit(tmpf99.',f44index,1);

fprintf('y = %fx + %f', coef_fit(1), coef_fit(2))
y_fit = polyval(coef_fit,xlim);
plot(xlim,y_fit,'r');
hold off

xlabel('Signal Strength')
ylabel('Force [N]')

err = 0;
% Calculate error
% for i = 1:numel(tmpf99)
%     stdev = std(polyval(coef_fit,tmpf99) - )
%     err = err + polyval(coetmpf99(i) - i
% end
end