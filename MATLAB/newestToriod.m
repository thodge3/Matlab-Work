steps = 10;
steps2 = 20;
G = 6.673E-11;
R = 10;
r = 5;
p = 100000000;

[theta,phi,rho] = meshgrid((0:2*pi/steps:2*pi),(0:2*pi/steps:2*pi),(0:5/steps2:5));

x = (R + r(:,:,:) .* cos(theta(:,:,:))) .* cos(phi(:,:,:));
y = (R + r(:,:,:) .* cos(theta(:,:,:))) .* sin(phi(:,:,:));
z = r(:,:,:) .* sin(theta(:,:,:));

for n= 1:(steps)
surf(x(:,:,n),y(:,:,n),z(:,:,n))
end
% surf(x,y,z)
hold on


QTheta = (0:2 * pi/steps2:2* pi);
QPhi   = (0:2*pi/steps2: 2*pi);
QR     = (0:100/steps2:100);


[CTheta,CPhi,CRho] = meshgrid(QTheta,QPhi,QR);
[X,Y,Z] = sph2cart(CTheta,CPhi,CRho);

dV = ((X(1,2,2) - X(1,1,2)) * (Y(2,1,1) - Y(1,1,1)) * (Z(1,1,2) - Z(1,1,1)));

% for i = 1:size(X)
%     for j = 1:size(Y)
%         for k = 1:size(Z)
%             
%         changex = x - X(i,j,k);
%         changey = y - Y(i,j,k);
%         changez = z - Z(i,j,k);
%         
%         
% 
%         rvec = sqrt( changex.^2  + changey.^2  + changez.^2);
%         
%          
%         dx = G  .* (1./((rvec.^3))) .* changex .* dV .* p;
%         dy = G  .* (1./((rvec.^3))) .* changey .* dV .* p;
%         dz = G  .* (1./((rvec.^3))) .* changez .* dV .* p;
%         
%         Fx(i,j,k) = trapz(trapz(trapz(dx)));
%         Fy(i,j,k) = trapz(trapz(trapz(dx)));
%         Fz(i,j,k) = trapz(trapz(trapz(dz)));
%         
%         end
%     end
%     disp(i)
% end


quiver3(X,Y,Z,X,Y,Z);

QQQQQ = 100;

axis([-QQQQQ QQQQQ -QQQQQ -QQQQQ QQQQQ])
