[x,y,z] = meshgrid((-1:0.05:1),(-1:0.05:1),(-1:0.05:1));

rho = abs(x) + abs(y) + abs(z);
p=isosurface(x,y,z,rho,0.8);

%p.FaceColor='green';
