[x,y] = meshgrid(-3:0.05:3);
[X,Y] = meshgrid(-3:.5:3);
phi = x.^2 - y.^2;

contour(x,y,phi,[4 4]);
hold on
contour(x,y,phi,[1 1]);
hold on
contour(x,y,phi,[0 0]);
hold on
contour(x,y,phi,[-1 -1]);
hold on
contour(x,y,phi,[-4 -4]);
hold on
legend('\phi = 4','\phi = 1','\phi = 0','\phi = -1', '\phi = -4');

hgradx = -2.*X;
hgrady = 2.*Y;
length = sqrt((-2.*X).^2 + (2.*Y).^2);

ux = hgradx ./ length;
uy = hgrady ./ length;
 

quiver(X,Y,ux,uy,.4);