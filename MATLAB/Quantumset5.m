clear
v = [0:.1:100];

m = 1;
E = 1;
h = 6.626*10^(-34);



k = ((2*m*E)/h).^( 1/2);
l = ((2*m*(E + v))./h).^(1/2);

r = ((k-l) ./ (l+k)).^(2);


plot(v,r);