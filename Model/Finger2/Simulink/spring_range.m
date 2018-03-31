load('Simulation 2018-02-25.mat')

frange = K1i(Fa < 14);
trange = K1i(t-3 < 3);
range = intersect(frange,trange);
min_ = min(range)
max_ = max(range)