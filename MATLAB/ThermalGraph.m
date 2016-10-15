clc, clear all;
x = [0:.01:24.016];
y = PiecewiseH0(x);

plot(x,y);
grid on;


figure(1)
set(gca,'FontSize',16)
plot(x,y);
axis([0 35 0 900]);
grid
title('Typical Heating Profile', 'FontSize', 24, 'interpreter', 'latex');
xlabel('Time (h)', 'interpreter','latex','FontSize', 24)
ylabel('Temperature (°C)', 'interpreter','latex','FontSize', 24)
