function [f] = FEx1( x,nmax )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

f = 0.5 + 0*x;
for n = 1:nmax
    f = f + (-1/n*pi)*(1-(-1)^n)*sin(n*x);
end

