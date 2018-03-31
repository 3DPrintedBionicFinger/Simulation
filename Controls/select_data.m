load('S2_E3_A1.mat');
emg44 = emg(stimulus==44,:);
data_sample = emg44(:,1);

emg50 = emg(stimulus==0,1);

% % plot
% plot(data_sample);
% % fft
% figure
% plot(abs(fft(data_sample)));

% get time vector (for use with simulink)
m = size(data_sample,1);
T = 1 / 2e3;
t = linspace(0, m * T, m);
% t = T * 0:size(emg44_1,1)-1;

% concatenate time and emg signal
emg_input = double([t.' data_sample]);
f44 = force(stimulus==44,4);
force_data = double([t.' f44]);


m = size(emg50,1);
T = 1 / 2e3;
t = linspace(0, m * T, m);

emg_rest = double([t.' emg50]);