function [ y ] = piecewise(x)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

x1 = x(x <= 4);
y(find(x <= 4)) = 112.5*x1;


y(find(4 <= x & x <= 8)) = 450;

x3 = x(8 <= x & x <= 13);
y(find(8 <= x & x <= 13)) = 80* x3 - 190;

y(find(13 <= x & x <= 23)) = 850;

x4 = x(23 <= x & x <= 23.016); 
y(find(23 <= x & x <= 23.016)) = -51000*x4 + 1173850;
% 
% y(find(21 <= x & x <= 25)) = 750;
% 
% x5 = x(25 <= x & x <= 25.05); 
% y(find(25 <= x & x <= 25.05)) = -12000*x5 + 300750;
% 
% y(find(25.05 <= x & x <= 33.05)) = 150;

end

