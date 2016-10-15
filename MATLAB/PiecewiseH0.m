function [ y ] = PiecewiseH0( x )
x1 = x(x <= 4);
y(find(x <= 4)) = 112.5*x1;


y(find(4 <= x & x <= 8)) = 450;

x2 = x(8 <= x & x <= 14);
y(find(8 <= x & x <= 14)) = 66.666666 * x2 - 83.333333;

y(find(14 <= x & x <= 24)) = 850;


x4 = x(24 <= x & x <= 24.016); 
y(find(24 <= x & x <= 24.016)) = -36000*x4 + 756750;


end

