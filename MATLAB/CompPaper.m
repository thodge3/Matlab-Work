x = dlmread('/Users/Hodge/Documents/Computational/Final Project/text.csv');
y = dlmread('/Users/Hodge/Documents/Computational/Final Project/text1.csv');
z = dlmread('/Users/Hodge/Documents/Computational/Final Project/text2.csv');

x1 = dlmread('/Users/Hodge/Documents/Computational/Final Project/Comparison/text.csv');
y1 = dlmread('/Users/Hodge/Documents/Computational/Final Project/Comparison/text1.csv');
z1 = dlmread('/Users/Hodge/Documents/Computational/Final Project/Comparison/text2.csv');



figure(1)

hold on
%plot3(36656,0,10,'r*');
plot3(18289,2.49,5,'r*');
plot3(x,y,z,'b');
%plot3(x1,y1,z1,'k');
%plot3(x1,y1,z1)
%plot3(x2,y2,z2)
%plot3(x3,y3,z3)
%plot3(x4,y4,z4)
%plot3(x5,y5,z5)
%plot3(x6,y6,z6)
%plot3(q,w,e)



set(gca,'FontSize',16)

axis([0 25000 -10 10 5 30000]);
title('Trajectory with Coriolis Effect ', 'FontSize', 24, 'interpreter', 'latex');
xlabel('X', 'interpreter','latex','FontSize', 24)
ylabel('Y', 'interpreter','latex','FontSize', 24)
zlabel('Z', 'interpreter','latex','FontSize', 24)
