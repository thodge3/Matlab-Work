import3 = dlmread('/Users/Hodge/Documents/Computational/Ising/output3.csv');
import2 = dlmread('/Users/Hodge/Documents/Computational/Ising/output2.csv');
import1 = dlmread('/Users/Hodge/Documents/Computational/Ising/output1.csv');
import4 = dlmread('/Users/Hodge/Documents/Computational/Ising/output4.csv');
import5 = dlmread('/Users/Hodge/Documents/Computational/Ising/output5.csv');
x = linspace(0,1500,1100);
x = x / 1044;



%plot(x,import3,'.');



 figure (1)
 surf(import1)
 title('Final Configuration', 'FontSize', 24, 'interpreter', 'latex');

 figure (2)
 surf(import2)
 title('Initial Configuration', 'FontSize', 24, 'interpreter', 'latex');


 figure (3)

 surf(import4)
 title('Magnetization Pattern', 'FontSize', 24, 'interpreter', 'latex');
 


figure (4)

plot(x,import3,'.');
title('Net Magnetization with B = 0.001', 'FontSize', 24, 'interpreter', 'latex');
xlabel('T/T$_c$', 'interpreter','latex','FontSize', 24)
ylabel('M / ($\mu N$)', 'interpreter','latex','FontSize', 24)

figure (5)

plot(x,import5,'.');
title('Net Energy', 'FontSize', 24, 'interpreter', 'latex');
xlabel('T/T$_c$', 'interpreter','latex','FontSize', 24)
ylabel('E / ($\mu N$)', 'interpreter','latex','FontSize', 24)


