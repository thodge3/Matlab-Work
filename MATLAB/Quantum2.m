
clc
clear
x = linspace(0,1,100);
a =1;
x1 = linspace(0,a/2,100);
x2 = linspace(a/2,a,100);
 
n=9;
Psi1= sqrt(4/a)* sin(2*pi*x1/a);
 
%plot(x1,Psi1,x2,x2*0);
hold on 
 
c =zeros(n,1);
 
for j=1:n
 
c(j)= (sqrt(2)/a)*((a/((2-j)*pi))*(sin(.5*pi*(2-j)))-(a/((2+j)*pi))*(sin(.5*pi*(2+j))));
 
end
 
c(2)= 1/ sqrt(2);
 
Psi= 0;
for j=1:n
Psi = Psi + c(j)* (sqrt(2)/a)*(sin(pi*x.*j/a));
end
 
%plot(x,Psi);


for k = 1:100
    t = linspace(0,1,100);
    
PsiComplete = 0;
Psi2 = 0;
for j = 1:n
    Psi2    =  Psi2 + c(j)* (sqrt(2)/a)*(sin(pi*x.*j/a)).*exp(1)^(-1i*j^(2)*t(k));
end
Psistar = 0;
for g = 1:n
   Psistar = Psistar + c(g)* (sqrt(2)/a)*(sin(pi*x.*g/a)).*exp(1)^(1i * g^(2)*t(k));
end

PsiComplete =  (Psi2 .* Psistar) ;

plot(x,PsiComplete);

M(k) = getframe;


end






