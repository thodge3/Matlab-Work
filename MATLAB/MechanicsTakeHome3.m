
theta = -2*pi:0.01:2*pi;
m = 10;
g = 9.8;

N = m*g*((3*cos(theta)) - 2);

plot(theta, N);
