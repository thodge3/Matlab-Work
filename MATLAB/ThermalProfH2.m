clc, clear all;
x = [0:.001:23.016];
y = piecewise(x);

plot(x,y);
grid on;
 

figure(1)
set(gca,'FontSize',16)
plot(x,y);
axis([0 35 0 900]);
grid
title('Thermal Profile for H$_{2}$', 'FontSize', 24, 'interpreter', 'latex');
xlabel('Time (h)', 'interpreter','latex','FontSize', 24)
ylabel('Temperature (°C)', 'interpreter','latex','FontSize', 24)
