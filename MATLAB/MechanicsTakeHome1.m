
A0 = 1;
B = 0.5;
A = 2*B;

X = linspace(0.85,2,1000);

Force = (-(6*A*(A0)^6) ./ (X).^7) + ((12*B*(A0)^12) ./ (X).^13);

Potential = (-(A*(A0)^6) ./ (X).^6) + ((B*(A0)^12) ./ (X).^12);

figure(1)
plot((X./A0),Force);
title('F(x) v. x/a0', 'FontSize', 24, 'interpreter', 'latex');
xlabel('x/a0', 'interpreter','latex','FontSize', 24)
ylabel('F(x)', 'interpreter','latex','FontSize', 24)

%yDesired = interp1((X./A0),Force, desiredXValue)

figure(2)
plot((X./A0), Potential)
title('V(x) v. x/a0', 'FontSize', 24, 'interpreter', 'latex');
xlabel('x/a0', 'interpreter','latex','FontSize', 24)
ylabel('V(x)', 'interpreter','latex','FontSize', 24)

figure(3)
plot(Force, Potential)
title('V(x) v. x/a0', 'FontSize', 24, 'interpreter', 'latex');
xlabel('x/a0', 'interpreter','latex','FontSize', 24)
ylabel('V(x)', 'interpreter','latex','FontSize', 24)

