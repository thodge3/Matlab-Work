clear;
vt = 50;
c = 0.5;
v0 = vt;

m = .051*vt;
g = 9.8;
a = 0:0.01:pi/2;
gamma = c/m;

%t = 0:0.01:50;


X = (((v0.^2) .* sin(2.*a)) / g ) - (((4.*(v0.^3).*sin(2.*a).*sin(a).* gamma) / (3.*(g.^2)))) ;
int = X(1:61);
max1 = max(int(:));
index = find(X==max1,1);
maxAngle = a(index);
angle = radtodeg(maxAngle)
px1 = maxAngle;
py1 = max1;

x1 = .34;
y1 = max1 + 5;

figure(1)
plot(a,X,px1,py1,'k.', 'Markersize',18);
txt = '\alpha = 0.35 rad';
text(x1,y1,txt,'HorizontalAlignment','right', 'FontSize', 12)

title('$X_{max}$ v. $\alpha$', 'FontSize', 24, 'interpreter', 'latex');
xlabel('$\alpha$ (radians)', 'interpreter','latex','FontSize', 24)
ylabel('$X_{max}$', 'interpreter','latex','FontSize', 24)