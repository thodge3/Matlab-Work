clear;
vt = 50;
v0 = vt;
g = 9.8;
a = .35;
t = 0:0.01:3.4;
Z_t = 0

for t = 0:0.01:50
    
         X_t = ((v0 .* vt .* cos(a)) / g) .* (1 - exp(-g.*t/vt));
         Z_t = (vt / g) .* (1 - exp(-g.*t/vt)) * (v0.*sin(a) + vt) - vt.*t;
         
         X1_t = (v0 .* cos(a)) .* t ;
         Z1_t = ((v0 .* sin(a)) .* t) - ( (g .* t^2) / 2);
 
        hold on
  if (Z_t > 0)
        plot(X_t,Z_t,'b.');
  end
  if (Z1_t > 0)
      plot(X1_t,Z1_t,'r.');
  end
end

figure(1)
title('Trajectory of Projectile', 'FontSize', 24, 'interpreter', 'latex');
legend({'Air Resistance' , 'No Air Resistance'} , 'FontSize', 14);
%set(h, 'Markersize', 20)
xlabel('$X_{t}$ (m)', 'interpreter','latex','FontSize', 24)
ylabel('$Z_{t}$ (m)', 'interpreter','latex','FontSize', 24)
