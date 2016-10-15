function [ f ] = DEEx( R,L,C,lit,nmax )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

f = 0.0*t;
for n= 1:2:nmax
    f = f + (-2*n*R)/(pi*(n^2*R/2)+(1/C-n^2*L)* sin(n*t)) ;
    f = f + (-2*(1/C-n^2*L)/(pi*n^2*R^2 + (1/C-n*L)^2)) * cos(n*t)
end



end

