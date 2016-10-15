[X,Y] = meshgrid(-4:.5:4);
[x,y] = meshgrid(-4:0.05:4);
T = x.*y - x;

contour(x,y,T,[2 2]);
%(x,y,T,[2 2],'ShowText','on');
hold on
contour(x,y,T,[1 1]);
hold on
contour(x,y,T,[0 0]);
hold on
contour(x,y,T,[-1 -1]);
hold on
contour(x,y,T,[-2 -2]);
hold on


legend('T = 2','T = 1','T = 0','T = -1','T = -2');

hgradx = -Y +1;
hgrady = -X;

length = sqrt((Y-1).^2 + (X).^2);

ux = hgradx ./ length;
uy = hgrady ./ length;


quiver(X,Y,ux,uy,.4);