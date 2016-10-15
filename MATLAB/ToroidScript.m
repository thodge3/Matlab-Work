%Anthony Thai
%Theoretical Methods in Physics

clf;
hold off;
clc;
clear all;

prompt = 'Input R: ';
R = input(prompt);
prompt = 'Input r: ';
rf = input(prompt);

%Define Rho
%Rho = 


%Position Matrix
[x1 y1 z1] = meshgrid((-72:6:72),(-72:6:72),(-72:6:72));

%Mesh of range
[phi theta r] = meshgrid(0:5:360, 0:5:360, 0:(rf/72):rf);

%Generating Torus
x = (R + r(:,:,:).*cosd(phi(:,:,:))).*cosd(theta(:,:,:));
y = (R + r(:,:,:).*cosd(phi(:,:,:))).*sind(theta(:,:,:));
z = r(:,:,:).*sind(phi(:,:,:));

%dV
dV = 0.5 * (r(1,1,73) - r(1,1,72)) * (2 * pi * r(1,1,72)*((phi(1,73,73) - phi(1,72,73))/360));

%Calling RhoFunction to define Rho
Rho = RhoFunction(x,r,1,1);

%Preallocation of Fg components
Fx = zeros(size(x1));
Fy = zeros(size(y1));
Fz = zeros(size(z1));
G = 6.67e-11;

%Calculating Grav Vector Components
for k = 1:1:size(x1)
   for j = 1:1:size(y1)
    for i = 1:1:size(z1)
        
        dx = x - x1(i,j,k);
        dy = y - y1(i,j,k);
        dz = z - z1(i,j,k);
        dist = sqrt(dx.^2 + dy.^2 + dz.^2);
        
        igx = G * dV .* Rho .* (1/((dist.^3) + 0.001)) .* dx;
        igy = G * dV .* Rho .* (1/((dist.^3) + 0.001)) .* dy;
        igz = G * dV .* Rho .* (1/((dist.^3) + 0.001)) .* dz;
        
        Fx(i,j,k) = trapz(trapz(trapz(igx)));
        Fy(i,j,k) = trapz(trapz(trapz(igy)));
        Fz(i,j,k) = trapz(trapz(trapz(igz)));
    end
   end
end

surf(x(:,:,73),y(:,:,73),z(:,:,73));
%axis equal;
xlabel('X');
ylabel('Y');
zlabel('N');