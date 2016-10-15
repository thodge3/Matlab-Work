x = linspace(-10,10,1000);
y2 = linspace(-100,100,1000);

c = (-32.17 ./ (2.*x.^2)) ;

y3 =  (c .* (((exp(1).^(x) - exp(1).^(-x)) / 2) - sin(x))) - 1.7 ;

n = 3;
m = 0;
y4 = x - ((0*pi) + atan(x));
y5 = x - ((1*pi) + atan(x));
y6 = x - ((2*pi) + atan(x));


y7 = (-2.*x) ./ ((1+x.^(2)).^(2));
y8 = 1;
y9 = -1;

% figure(1)
% hold on
% 
% plot(x,y,'r',x,y1,'b'), grid on;
% axis([-pi pi -5 5])
% legend('y = x','y = tan(x)');
% 
%title('', 'FontSize', 24, 'interpreter', 'latex');
%xlabel('Position (x)', 'interpreter','latex','FontSize', 24)
%ylabel('$\psi$(x,t = 0)', 'interpreter','latex','FontSize', 24)

% figure(2)
% hold on
% 
% plot(x,y2,'r',x, 0*x,'b',0*x,x1,'b'), grid on;
% axis([-pi pi -5 5])
% legend('y = x - tan(x)');

%title('', 'FontSize', 24, 'interpreter', 'latex');
%xlabel('Position (x)', 'interpreter','latex','FontSize', 24)
%ylabel('$\psi$(x,t = 0)', 'interpreter','latex','FontSize', 24)

% figure(3)
% hold on
% 
% hl = plot(x,y4,'r'), grid on;
% 
% hb = plot(x,y5,'g'), grid on;
% 
% hc = plot(x,y6,'c'), grid on;
% 
% plot(x,0*x,'b',0*x,x,'b');
% 
% 
% 
% axis([-15 15 -15 15])
% legend([hl,hb,hc],{'m = 0','m = 1','m = 2'});

%title('', 'FontSize', 24, 'interpreter', 'latex');
%xlabel('Position (x)', 'interpreter','latex','FontSize', 24)
%ylabel('$\psi$(x,t = 0)', 'interpreter','latex','FontSize', 24)


figure (4)
hold on

plot(x,y7,'r',x,0*x,'b',0*x,x,'b'),grid on;
plot([-10 10],[1 1],'k');
plot([-10 10],[-1 -1],'k');
axis([-3 3 -3 3])

legend('y = g''''(x)');


