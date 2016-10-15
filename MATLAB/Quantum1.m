x = linspace(0,1,1000);
a = 1;


c1 = ((4*(2)^(1/2))/(3.*pi));
c2 = 1/((2)^(1/2));
c3 = (4*(2)^(1/2))/(5.*pi);
c5 = -((4*(2)^(1/2))/(21.*pi));


psi =  c1 * (( (2/a)^(1/2) * sin((pi.*x)/a) )) + ...
c2 * ((( (2/a)^(1/2) * sin((2*pi.*x)/a) )) ) + ...
 c3 *  (( (2/a)^(1/2) * sin((3*pi.*x)/a) )) + ...
 c5 * (( (2/a)^(1/2) * sin((5*pi.*x)/a) ));

%plot(x,psi);

hold on
x1 = linspace(0,a/2,100);
x2 = linspace(a/2, a, 100);
psi1 = (2/(a)^(1/2))  * sin((2*pi*x1) / a );
%plot(x1,psi1,x2,x2*0,'r');


psi2 = c1 * (( (2/a)^(1/2) * sin((pi*x)/a) ));
%plot(x,psi2);

psi3 = c1 * (( (2/a)^(1/2) * sin((pi*x)/a) )) + ...
c2 * (( (2/a)^(1/2) * sin((2*pi*x)/a) ));

%plot(x,psi3);

psi4 = c1 * (( (2/a)^(1/2) * sin((pi*x)/a) )) + ...
c2 * (( (2/a)^(1/2) * sin((2*pi*x)/a) )) + ...
c3 * (( (2/a)^(1/2) * sin((3*pi*x)/a) ));
%plot(x,psi4);

psi5 = c1 * (( (2/a)^(1/2) * sin((pi.*x)/a) )) ...
+ c2 * (( (2/a)^(1/2) * sin((2*pi.*x)/a) ))  ...
+ c3 * (( (2/a)^(1/2) * sin((3*pi.*x)/a) ))  ...
+ c5 * (( (2/a)^(1/2) * sin((5*pi.*x)/a) ));
%plot(x,psi5);




figure(1)
hold on

plot(x,psi,'b');
plot(x1,psi1,'r',x2,x2*0,'r');

title('Wave Function for n = 5 ', 'FontSize', 24, 'interpreter', 'latex');
xlabel('Position (x)', 'interpreter','latex','FontSize', 24)
ylabel('$\psi$(x,t = 0)', 'interpreter','latex','FontSize', 24)


