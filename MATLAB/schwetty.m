clf;
clear all;

steps = 30;
steps2 = 7;
steps3 = 7;

R = 3397000;
G = 6.67384E-11;
RRR = (2/3) * R; 
Volume = (2*pi*R)*(pi*RRR^2);




[theta,phi,r] = meshgrid((0:2*pi/steps:2*pi),(0:2*pi/steps:2*pi),(0:RRR/steps:RRR));



x = (R + r(:,:,:) .* cos(theta(:,:,:))) .* cos(phi(:,:,:));
y = (R + r(:,:,:) .* cos(theta(:,:,:))) .* sin(phi(:,:,:));
z = r(:,:,:) .* sin(theta(:,:,:));



p = 3930; % Density of Mars 
W = .02;

% figure
% for n= 1:(steps)
% surf(x(:,:,n),y(:,:,n),z(:,:,n))
% end
colormap copper
hold on
axis equal

QQQ = 2*R;

[vx,vy,vz] = meshgrid((-QQQ:2*QQQ/steps2:QQQ));


dV = 0;
for i = 2:size(x)
    for j = 2:size(y)
        for k = 2:size(z)

V = dV + ((x(i,j,k) - x(i-1,j-1,k-1)) * (y(i,j,k) - y(i-1,j-1,k-1)) * (z(i,j,k) - z(i-1,j-1,k-1)));

        end
    end
end

V = V/10;
%This is the declaration for the force due to acceleration.

ntheta = (0:2*pi/steps3:2*pi);
nr = (0:2*R/steps3:2*R);

[TH,QR] = meshgrid(ntheta,nr);
[X,Y] = pol2cart(TH,QR);
mT = p .* V;

 fx = X .* (mT * W^2 * R);
 fy = Y .* (mT * W^2 * R);


mT = (p*V);



%quiver to plot the forces due to rotation.
quiver(X,Y,fx,fy,'g');
hold on


Fx = zeros(size(vx));
Fy = zeros(size(vx));
Fz = zeros(size(vx));
for i = 1:size(vx)
    for j = 1:size(vy)
        for k = 1:size(vz)

        changex = x - vx(i,j,k);
        changey = y - vy(i,j,k);
        changez = z - vz(i,j,k);

        rvec = sqrt( changex .^2  + changey .^2  + changez .^2 );
        
        dx = G * V .* p .* (1./((rvec.^3))) .* changex ;
        dy = G * V .* p .* (1./((rvec.^3))) .* changey ;
        dz = G * V .* p .* (1./((rvec.^3))) .* changez ;
        
        Fx(i,j,k) = trapz(trapz(trapz(dx)));
        Fy(i,j,k) = trapz(trapz(trapz(dy)));
        Fz(i,j,k) = trapz(trapz(trapz(dz)));
        
   
end
end

end




 quiver3(vx,vy,vz,Fx,Fy,Fz,'r');
 hold on
%figure
%contourf(vx(:,:,1),vy(:,:,1),Fz(:,:,1))

ax = 2 * R;
axis([-ax ax -ax ax -ax ax]);


figure(1)
set(gca,'FontSize',16)

for n= 1:(steps)
surf(x(:,:,n),y(:,:,n),z(:,:,n))
end

axis([-ax ax -ax ax -ax ax]);
grid
title('Complete Force Diagram', 'FontSize', 24, 'interpreter', 'latex');
xlabel('X', 'interpreter','latex','FontSize', 24)
ylabel('Y', 'interpreter','latex','FontSize', 24)
zlabel('Z', 'interpreter','latex','FontSize', 24)

figure(2)
set(gca,'FontSize',16)

quiver3(vx,vy,vz,Fx,Fy,Fz,3,'r','Autoscale','off');
axis([-ax ax -ax ax -ax ax]);
grid
title('Force Field due to Gravity', 'FontSize', 24, 'interpreter', 'latex');
xlabel('X', 'interpreter','latex','FontSize', 24)
ylabel('Y', 'interpreter','latex','FontSize', 24)
zlabel('Z', 'interpreter','latex','FontSize', 24)

figure(3)
set(gca,'FontSize',16)

quiver(X,Y,fx,fy,'r');
axis([-ax ax -ax ax -ax ax]);
grid
title('Forces due to Rotation', 'FontSize', 24, 'interpreter', 'latex');
xlabel('X', 'interpreter','latex','FontSize', 24)
ylabel('Y', 'interpreter','latex','FontSize', 24)
zlabel('Z', 'interpreter','latex','FontSize', 24)

figure(4)
set(gca,'FontSize',16)
contourf(vx(:,:,1),vy(:,:,1),Fz(:,:,1))
axis([-ax ax -ax ax -ax ax]);
grid
title('Strength of Gravity in the `Z'' Direction ', 'FontSize', 24, 'interpreter', 'latex');
xlabel('X', 'interpreter','latex','FontSize', 24)
ylabel('Y', 'interpreter','latex','FontSize', 24)
zlabel('Z', 'interpreter','latex','FontSize', 24)

figure(5)
set(gca,'FontSize',16)
contourf(vx(:,:,1),vy(:,:,1),Fx(:,:,1))
axis([-ax ax -ax ax -ax ax]);
grid
title('Strength of Gravity in the `X'' Direction ', 'FontSize', 24, 'interpreter', 'latex');
xlabel('X', 'interpreter','latex','FontSize', 24)
ylabel('Y', 'interpreter','latex','FontSize', 24)
zlabel('Z', 'interpreter','latex','FontSize', 24)

figure(6)
set(gca,'FontSize',16)
contourf(vx(:,:,1),vy(:,:,1),Fy(:,:,1))
axis([-ax ax -ax ax -ax ax]);
grid
title('Strength of Gravity in the `Y'' Direction ', 'FontSize', 24, 'interpreter', 'latex');
xlabel('X', 'interpreter','latex','FontSize', 24)
ylabel('Y', 'interpreter','latex','FontSize', 24)
zlabel('Z', 'interpreter','latex','FontSize', 24)
