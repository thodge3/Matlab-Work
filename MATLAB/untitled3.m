t = (0:0.01:2*pi);

c1 = 3 + (sin(2*pi*t));
c2 = sin(40*pi*t);

y = c1*c2;

plot(t,y);