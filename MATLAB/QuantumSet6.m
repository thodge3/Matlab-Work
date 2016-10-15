z = linspace(0,2*pi,100);



z0 = 1;

fx = cot(z);
fx1 = ((z0./z).^2 - 1).^(1/2);

plot(z,fx);


