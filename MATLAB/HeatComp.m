import = dlmread('/Users/Hodge/Documents/Computational/Heat/output.csv');
import1 = dlmread('/Users/Hodge/Documents/Computational/Heat/output1.csv');
import2 = dlmread('/Users/Hodge/Documents/Computational/Heat/output2.csv');
import3 = dlmread('/Users/Hodge/Documents/Computational/Heat/output3.csv');
 x = linspace(0,1,201);
 y = linspace(0,1,201);
 
 
    

figure(1)
surf(x,y,import);
colormap(jet(1000));
shading interp;
colorbar
title('Heat Diffusion at $\tau$ = 1000', 'FontSize', 24, 'interpreter', 'latex');
xlabel('X', 'interpreter','latex','FontSize', 24)
ylabel('Y', 'interpreter','latex','FontSize', 24)
zlabel('T', 'interpreter','latex','FontSize', 24)

figure(2)
surf(x,y,import1);
colormap(jet(1000));
shading interp;
colorbar
title('Heat Diffusion at $\tau$ = 2000', 'FontSize', 24, 'interpreter', 'latex');
xlabel('X', 'interpreter','latex','FontSize', 24)
ylabel('Y', 'interpreter','latex','FontSize', 24)
zlabel('T', 'interpreter','latex','FontSize', 24)

figure(3)
surf(x,y,import2);
colormap(jet(1000));
shading interp;
colorbar
title('Heat Diffusion at $\tau$ = 3000', 'FontSize', 24, 'interpreter', 'latex');
xlabel('X', 'interpreter','latex','FontSize', 24)
ylabel('Y', 'interpreter','latex','FontSize', 24)
zlabel('T', 'interpreter','latex','FontSize', 24)

figure(4)
surf(x,y,import3);
colormap(jet(1000));
shading interp;
colorbar
title('Heat Diffusion at $\tau$ = 4000', 'FontSize', 24, 'interpreter', 'latex');
xlabel('X', 'interpreter','latex','FontSize', 24)
ylabel('Y', 'interpreter','latex','FontSize', 24)
zlabel('T', 'interpreter','latex','FontSize', 24)

