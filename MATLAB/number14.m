[x,y] = meshgrid(-6:0.06:6);

z = 32 - x.^2 - 4.*y.^2;

contour(x,y,z,[32 32]);
hold on
contour(x,y,z,[19 19]);
hold on
contour(x,y,z,[12 12]);
hold on
contour(x,y,z,[7 7]);
hold on
contour(x,y,z,[0 0]);

legend('Z = 32','Z = 19','Z = 12','Z = 7','Z = 0');


