

r = linspace(0,5,1000);

V0 = 1;
r0 = 1;
delta = 1;



V = (V0 * (1-exp(-(r-r0)/delta)).^(2)) - V0;

figure (1)
plot(r,V);


grid
title('Morse Potential for V$_0$ = R$_0$ = $\delta$ = 1 ', 'FontSize', 24, 'interpreter', 'latex');
xlabel('R', 'interpreter','latex','FontSize', 24)
ylabel('V', 'interpreter','latex','FontSize', 24)
