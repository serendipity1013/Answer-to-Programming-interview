function F=f(t,Y)
% the differential equation to be solved
k1 = 100; k2 = 600; k3 = 150;
y1 = Y(1); 
y2 = Y(2);
y3 = Y(3);
y4 = Y(4);
f1 = -k1 * y1 * y2 + k2 * y3;
f2 = -k1 * y1 * y2 + (k2 + k3) * y3;
f3 =  k1 * y1 * y2 - (k2 + k3) * y3;
f4 = k3 * y3;
F = [f1;f2;f3;f4];
end

