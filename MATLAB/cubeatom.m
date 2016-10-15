clear
clc


import = importdata('/Users/Hodge/Documents/Computational/Atom/newoutput.csv');
whoa = importdata('/Users/Hodge/Documents/Computational/Atom/2here.csv');
cool = importdata('/Users/Hodge/Documents/Computational/Atom/potential.csv');
hey = importdata('/Users/Hodge/Documents/Computational/Atom/kinetic.csv');
youngblood = importdata('/Users/Hodge/Documents/Computational/Atom/3here.csv');
marcellus = importdata('/Users/Hodge/Documents/Computational/Atom/4here.csv');


figure(1)
plot3(import(:,1),import(:,2),import(:,3),'.k');
title('Initial Lattice of ICE-IX', 'FontSize', 24, 'interpreter', 'latex');
xlabel('', 'interpreter','latex','FontSize', 24)
ylabel('', 'interpreter','latex','FontSize', 24)
zlabel('', 'interpreter','latex','FontSize', 24)


hold on
%figure(2)
plot3(whoa(:,1),whoa(:,2),whoa(:,3),'.r');
title('Lattice of ICE-9 at $\tau$ = 430', 'FontSize', 24, 'interpreter', 'latex');
% xlabel('X', 'interpreter','latex','FontSize', 24)
% ylabel('Y', 'interpreter','latex','FontSize', 24)
% zlabel('Z', 'interpreter','latex','FontSize', 24)


%figure (4)
plot3(youngblood(:,1),youngblood(:,2),youngblood(:,3),'.b');
title({'Compression of the ICE-IX Lattice at','$\hspace{15mm}$ $\tau = 0,430,700$'}, 'FontSize',  24, 'interpreter', 'latex');
% xlabel('X', 'interpreter','latex','FontSize', 24)
% ylabel('Y', 'interpreter','latex','FontSize', 24)
% zlabel('Z', 'interpreter','latex','FontSize', 24)

figure (5)
plot3(marcellus(:,1),marcellus(:,2),marcellus(:,3),'.g');
title('Lattice of ICE-IX at $\tau$ = 2400', 'FontSize', 24, 'interpreter', 'latex');
xlabel('X', 'interpreter','latex','FontSize', 24)
ylabel('Y', 'interpreter','latex','FontSize', 24)
zlabel('Z', 'interpreter','latex','FontSize', 24)


figure (3)
plot(cool(:,1),'r');
hold on
plot(hey(:,1),'b');

plot(hey(:,1) + cool(:,1),'k');

title('Energy Plot of ICE-IX', 'FontSize', 24, 'interpreter', 'latex');
xlabel('X', 'interpreter','latex','FontSize', 24)
ylabel('Y', 'interpreter','latex','FontSize', 24)
zlabel('Z', 'interpreter','latex','FontSize', 24)




