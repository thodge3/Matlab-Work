
steps = 30;
steps2 = 7;
steps3 = 7;

R = 695800000;
G = 6.67384E-11;
Volume = (2*pi*R)*(pi*3000000^2);


RRR = (2/3) * R; 

[theta,phi,r] = meshgrid((0:2*pi/steps:2*pi),(0:2*pi/steps:2*pi),(0:RRR/steps:RRR));



x = (R + r(:,:,:) .* cos(theta(:,:,:))) .* cos(phi(:,:,:));
y = (R + r(:,:,:) .* cos(theta(:,:,:))) .* sin(phi(:,:,:));
z = r(:,:,:) .* sin(theta(:,:,:));

hold on

p = 10000; % density of aluminum
W = .000000002;


for n= 1:(steps)
surf(x(:,:,n),y(:,:,n),z(:,:,n))
end
colormap hsv

axis equal

QQQ = 1000000000;

[vx,vy,vz] = meshgrid((-QQQ:2*QQQ/steps2:QQQ));


% dV = 0;
% for i = 2:size(x)
%     for j = 2:size(y)
%         for k = 2:size(z)
% 
% V = dV + abs(((x(i,j,k) - x(i-1,j-1,k-1)) * (y(i,j,k) - y(i-1,j-1,k-1)) * (z(i,j,k) - z(i-1,j-1,k-1))));
% 
%         end
%     end
% end

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
%{ 
ntheta = (0:2*pi/steps3:2*pi);
nr = (0:40/steps3:40);

[TH,QR] = meshgrid(ntheta,nr);
[X,Y] = pol2cart(TH,QR);
mT = p .* V;

 fx = X .* (mT * W^2 * R);
 fy = Y .* (mT * W^2 * R);
%}

mT = (p*V);


hold on

%quiver to plot the forces due to rotation.
%quiver(X,Y,fx,fy);


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
disp(i)
end


hold on

 quiver3(vx,vy,vz,Fx,Fy,Fz,2,'Autoscale','off');

 ax = 1 * R;
axis([-ax ax -ax ax -ax ax]);




