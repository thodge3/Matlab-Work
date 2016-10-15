steps = 50;
steps2 = 20;
R = 3;
r = 1.5;
G = 6.67384E-11
p = 150;

[theta,phi] = meshgrid((0:2*pi/steps:2*pi),(0:2*pi/steps:2*pi));


x = (R + r .* cos(theta(:,:,:))) .* cos(phi(:,:,:));
y = (R + r .* cos(theta(:,:,:))) .* sin(phi(:,:,:));
z = r .* sin(theta(:,:,:));

figure 
hold on
surf(x,y,z,'FaceColor','red','EdgeColor','none')

[vx,vy,vz] = meshgrid(-2 : 4/steps2 : 2);

vx = vx .* R;
vy = vy .* R;



%dA = 4 * pi^2 * R * r; 
dA = (vx(1,2) - vx(1,1)) .^ 2



for i = 1:size(vx)
    for j = 1:size(vy)
        for k = 1:size(vz)
        

        changex = x - vx(i,j,k);
        changey = y - vy(i,j,k);
        changez = z - vz(i,j,k);
        
        

        rvec = sqrt( changex.^2  + changey.^2 + change.^2);
        
         
        dx = G * dA .* p .* (1./((rvec.^3))) .* changex;
        dy = G * dA .* p .* (1./((rvec.^3))) .* changey;
        dv = G * dA .* p .* (1./((rvec.^3))) .* changez;
        
        Fx(i,j,k) = trapz(trapz((dx)));
        Fy(i,j,k) = trapz(trapz((dy)));
        Fy(i,j,k) = trapz(trapz((dz)));
        
      
end
disp(i)
    end
end






quiver(vx,vy,Fx,Fy,5);
%contour(x,y,z)

% a=5;
%      c=10;
%      [u,v]=meshgrid(0:10:360);
%      x=(c+a*cosd(v)).*cosd(u);
%      y=(c+a*cosd(v)).*sind(u);
%      z=a*sind(v);
%      surfl(x,y,z)
     
axis([-8 8 -8 8 -8 8])

