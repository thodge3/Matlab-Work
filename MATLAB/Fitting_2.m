

x2 = (xdata).^(-2);
x1 = (xdata).^(-1);


A = zeros(59,3);
A(:,1) = ones(59,1);
A(:,2) = x1;
A(:,3) = x2;

W = zeros(59,59);
for i = 1:59
    W(i,i) = uncert(i);
end
LHS = (A'*W*A);
RHS = (A'*W*ydata);
C = LHS\RHS;

C3 = C(3);
C2 = C(2);
C1 = C(1);

yfit = C1 + C2*(x1) + C3*(x2);

chi = 0;
for j = 1:59
    oldchi = ((ydata(i) - yfit(i)).^(2)) / 59;
    chi = chi + oldchi;
end     

errorbar(xdata,ydata,uncert,'c');
hold
plot(xdata,yfit,'k');



prediction1 = C1 + C2*((.2).^(-1)) + C3*((.2).^(-2));
prediction2 = C1 + C2*((14).^(-1)) + C3*((14).^(-2));



pointuncertainty1 = sqrt((LHS(1,1)).^(2) + ((LHS(2,2) * ((.2).^(-1)))).^(2) + ((LHS(3,3) * ((.2).^(-2)))).^(2))
pointuncertainty2 = sqrt((LHS(1,1)).^(2) + ((LHS(2,2) * ((14).^(-1)))).^(2) + ((LHS(3,3) * ((14).^(-2)))).^(2))