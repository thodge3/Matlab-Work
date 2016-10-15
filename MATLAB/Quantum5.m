
clc
clear
x = linspace(0,1,100);
a =1;
x1 = linspace(0,a/2,100);
x2 = linspace(a/2,a,100);
 
n=5;
Psi1= sqrt(4/a)* sin(2*pi*x1/a);
 
%plot(x1,Psi1,'r',x2,x2*0,'r');
hold on 
 
c =zeros(n,1);
 
for j=1:n
 
c(j)= (sqrt(2)/a)*((a/((2-j)*pi))*(sin(.5*pi*(2-j)))-(a/((2+j)*pi))*(sin(.5*pi*(2+j))));
 
end
 
c(2)= 1/ sqrt(2);
 t = 1;
 
 for k = 1:10
    t = linspace(0,1,10);

Psi= 0;
for j=1:n
Psi = Psi + c(j)* (sqrt(2)/a)*(sin(pi*x.*j/a)).*exp(1).^(-1i*j^(2)*t(k));
end

M(k) = getframe;
plot(x,real(Psi),'b');
 end



% PsiComplete = 0;
% Psi2 = 0;
% for j = 1:n
%     Psi2    =  Psi2 + c(j).* (sqrt(2)/a).*(sin(pi*x.*j/a)).*exp(1).^(-1i.*j^(2).*t);
% end


