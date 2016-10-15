x = [-2:0.05:2];

y1 = ones(1,81);

y2 = (1 + x) ./ x;

y3 = (2 + x) ./ x;

y4 = (x - 1) ./ x;

y5 = (x - 2) ./ x;

plot(x,y1,'r',x,y2,'-.b',x,y3,'g',x,y4,'k',x,y5,'c');
legend('T = 0','T = 1','T = 2','T = -1', 'T = -2');
hold on

hgradx = y-1;
hgrady = x;

length = sqrt((y-1).^2 + (x).^2);

ux = hgradx ./ length;
uy = hgrady ./ length;


