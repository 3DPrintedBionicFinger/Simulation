% assuming linear spring
% K = torque/deg
inlb2Nm = @(x) x*0.113;
Nm2inlb = @(x) x*8.8496;

Tmax = inlb2Nm(0.047)
Tmax/180 %Nm/deg

% max: 0.6" outer diameter

% century_spring = [
% K1i = 0.001:0.001:0.5; %Nm/deg
K1i = 0.0001:0.0001:0.002;
% K1 = inlb2Nm(0.164)
t = [];
Ta_all = [];
q_PIP_v = [];
w_PIP_v = [];
i = 1;
for Ki = K1i
    K1 = Ki;
    K2 = 1.5*K1;
    Ta = 227*K1;
    Ta_all = [Ta_all Ta];
    simOut = sim('BionicFingerAssembly2');
    q_PIP_v = [q_PIP_v q_PIP];
    w_PIP_v = [w_PIP_v w_PIP];
    resp = q_PIP.Data;
    ind = find(resp>=0.1*max(resp),1,'last');
    t = [t q_PIP.Time(ind)];
    
    fprintf('\nDone %d of %d',i,size(K1i,2))
    i = i+1;
end
fprintf('Simulation over')
pause

Tmax1=Nm2inlb(K1*180)

closed_thread = 5.83 + 3.91;
open_thread = 32.24 + 11.1;
closing_len = open_thread - closed_thread

close_time = 1;
close_speed = closing_len/close_time % mm/s

12.5*0.75