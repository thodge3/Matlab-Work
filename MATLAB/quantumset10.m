a = 0.529E-10;
n = a/1500;
r = linspace(0,10*a,1500);



y1 = 2*a.^(-3/2).*exp(-r./a);
y2 = (1/sqrt(2)) * (a.^(-3/2).* (1-r./(2*a))) .*  exp(-r./(2*a));
y3 = 1/sqrt(24) * a^(-3/2) * r./a .* exp(-r/(2*a));
 
y1 = a^(3/2) * y1;
y2 = a^(3/2) * y2;
y3 = a^(3/2) * y3;

figure(1)
plot(r,y1);
hold on
plot(r,y2);
plot(r,y3);