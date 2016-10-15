import1 = dlmread('/Users/Hodge/Documents/Computational/QuantumWell/fort.10');
import2 = dlmread('/Users/Hodge/Documents/Computational/QuantumWell/fort.11');
import3 = dlmread('/Users/Hodge/Documents/Computational/QuantumWell/fort.12');
import4 = dlmread('/Users/Hodge/Documents/Computational/QuantumWell/fort.13');
import5 = dlmread('/Users/Hodge/Documents/Computational/QuantumWell/fort.20');
x = linspace(0,1.0E-9,1000);

figure(1)
fx = 3.0150298242429369E-019 * ((x - 0.5E-9).^2 - 9.9999997171806854E-010);
plot(x,import1/sqrt(5.0705459235834639E-005),'r')
hold on
plot(x,import2/sqrt(1.2677496021109024E-005),'b')

plot(x,import3/sqrt(5.6400876223256374E-006),'g')
plot(x,x*0);
plot(x,import4/sqrt(3.1705501442107013E-006),'k')


figure(2)

plot(x,fx);

figure (3)

plot(x,import3/sqrt(5.6400876223256374E-006),'b')



