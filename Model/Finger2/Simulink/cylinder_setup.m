Rx = @(th) [1 0 0; 0 cos(th) -sin(th); 0 sin(th) cos(th)];
Ry = @(th) [cos(th) 0 sin(th); 0 1 0; -sin(th) 0 cos(th)];
Rz = @(th) [cos(th) -sin(th) 0; sin(th) cos(th) 0; 0 0 1];

Rc = Ry(deg2rad(90))