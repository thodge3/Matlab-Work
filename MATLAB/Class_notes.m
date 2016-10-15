x = [0:0.1:5];
y = [0:0.1:5];
[X,Y] = meshgrid(x,y);

z = [X.^2 + Y.^2];


surf(X,Y,z);