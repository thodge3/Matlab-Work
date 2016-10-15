%scale 0 is autoscale quiver plots, 1 is autoscale off
scale=0;
 
points=30;
points2=9;
 
 
dens=1;
R=30;
 
G=6.67384*10^(-11);
 
% dens=5.54E4;
% R=(6.378E6)*3;
rr=R/3; % 3:1 ratio between R and rr
 
V= 2*pi*R*pi*rr^2;
M= V*dens;
% [theta,phi]=meshgrid((0:2*pi/points:2*pi),(0:2*pi/points:2*pi));
% x= (R+r.*cos(theta(:,:,:))).*cos(phi(:,:,:));
% y= (R+r.*cos(theta(:,:,:))).*sin(phi(:,:,:));
% z= r.*sin(theta(:,:,:));
% 
% mesh(x,y,z);
 
[theta,phi,r]=meshgrid((0:2*pi/points:2*pi),(0:2*pi/points:2*pi),(0:rr/points:rr));
x= (R+r(:,:,:).*cos(theta(:,:,:))).*cos(phi(:,:,:));
y= (R+r(:,:,:).*cos(theta(:,:,:))).*sin(phi(:,:,:));
z= r(:,:,:).*sin(theta(:,:,:));
 
 
[ex,ey,ez]=meshgrid((-2:4/points2:2),(-2:4/points2:2),(-2:4/points2:2));
 
%zeros for cube envirnoment
Fx=zeros(size(ex));
Fy=zeros(size(ey));
Fz=zeros(size(ez));
 
ex=ex.*R;
ey=ey.*R;
ez=ez.*R;
 
%volume element
dv=((r(1,1,2)-r(1,1,1))*(theta(1,2,1)-theta(1,1,1))*(phi(2,1,1)-phi(1,1,1)));
 
for i=1:size(ex)
for j=1:size(ex)
for k=1:size(ex)

%dv=(R+r(i,j,k).*sin(phi(i,j,k))).*((r(1,1,2)-r(1,1,1))*(theta(1,2,1)-theta(1,1,1))*(phi(2,1,1)-phi(1,1,1)));
dx=x-(ex(i,j,k));
dy=y-(ey(i,j,k));
dz=z-(ez(i,j,k));

%             dx=x-(ex(i,j,k)*r(i,j,k)*(R+r(i,j,k)*sin(phi(i,j,k))));
%             dy=y-(ey(i,j,k)*r(i,j,k)*(R+r(i,j,k)*sin(phi(i,j,k))));
%             dz=z-(ez(i,j,k)*r(i,j,k)*(R+r(i,j,k)*sin(phi(i,j,k))));
 
rmag = sqrt(dx.^2+dy.^2+dz.^2);

dmx=(G.*dv.*dens.*((1/((rmag).^3)))).*dx;
dmy=(G.*dv.*dens.*((1/((rmag).^3)))).*dy;
dmz=(G.*dv.*dens.*((1/((rmag).^3)))).*dz;

Fx(i,j,k)=trapz(trapz(trapz((dmx))));
Fy(i,j,k)=trapz(trapz(trapz(dmy)));
Fz(i,j,k)=trapz(trapz(trapz(dmz)));

end
end
disp(i)
end
F = sqrt(Fx.^2+Fy.^2+Fz.^2);
figure
hold on
 
% Vt=0;
% for i=1:size(ex)
%     for j=1:size(ex)
%         for k=1:size(ex)
%                 Vt = Vt + (R+r(i,j,k)*sin(phi(i,j,k)));
%         end
%     end
% end
Vt=0;
for i=1:size(ex)
for j=1:size(ex)
for k=1:size(ex)
Vt = Vt+(dx(i,j,k)+dy(i,j,k)+dz(i,j,k));
end
end
end
 
% Vt= Vt*((r(1,1,2)-r(1,1,1))*(theta(1,2,1)-theta(1,1,1))*(phi(2,1,1)-phi(1,1,1)));
 
 
%for n=1:points2
%quiver3(ex(:,:,n),ey(:,:,n),ez(:,:,n),Fx(:,:,n),Fy(:,:,n),Fz(:,:,n))
%end
if scale==1;
quiver3(ex,ey,ez,Fx,Fy,Fz,'Autoscale','off');
else
quiver3(ex,ey,ez,Fx,Fy,Fz);
end
 
for n=1:(points)
surfl(x(:,:,n),y(:,:,n),z(:,:,n));

end
axis equal
 
w=2;
Mt= dens*V;
 
ntheta = (0:2*pi/points2:2*pi);
nr = (0:25/points2:50);
 
[TH,QR] = meshgrid(ntheta,nr);
[X,Y] = pol2cart(TH,QR);
fax=X .*w^2 * rr;
fay=Y .*w^2 * rr;
quiver(X,Y,fax,fay);
figure
streamslice(ex,ey,ez,Fx,Fy,Fz,[],[],[10]);
contour(ex(:,:,4),ey(:,:,4),Fz(:,:,4))
% hold on
% contourf(ex(:,:,4),ey(:,:,4),Fz(:,:,4))
% if scale==1;
%     quiver(X,Y,fax,fay,'Autoscale','off');
% else
%     quiver(X,Y,fax,fay);
% end