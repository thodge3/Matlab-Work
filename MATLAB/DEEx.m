function [ f ] = DEEx( t,nmax )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

f = 0.0*t+0.5;
for n= 1:2:nmax
    f = f - (2/(pi*n) * sin(n*t));
end



end

