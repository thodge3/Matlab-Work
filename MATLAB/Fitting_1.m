clear

import1 = dlmread('/Users/travishodge/Desktop/NDREU/Models_CarbonAdundances/z-3c-0.5N-0.5.csv');

xdata = import1(:,4);
ydata = import1(:,6);

sizeOfFile = 509;

k = sizeOfFile - 443

%alphaM = ones(sizeOfFile,1);
jj = 1;
for i = 443:sizeOfFile
    if jj == k
      break;
    end
 
   alphaM(jj,1) = xdata(i,1);
   alphaN(jj,1) = ydata(i,1);
   jj = jj+1;
end

%xdata = alphaM

%x1 = (xdata).^(-1);
x1 = alphaM;
test = sum(alphaM)

sizeOfFile = jj-1;

%uncert(:) = zeros(sizeOfFile,1);

A = zeros(sizeOfFile,2);
A(:,1) = ones(sizeOfFile,1);
A(:,2) = x1;


%W = zeros(sizeOfFile,sizeOfFile);
for i = 1:sizeOfFile
 %   W(i,i) = uncert(i);
end
%LHS = (A'*W*A);
LHS = (A'*A);
%RHS = (A'*W*ydata);
RHS = (A'*alphaN);
C = LHS\RHS;


C2 = C(2);
C1 = C(1);

yfit = C1 + C2*(x1);

chi = 0;
for j = 1:sizeOfFile
    oldchi = ((ydata(i) - yfit(i)).^(2)) / sizeOfFile;
    chi = chi + oldchi;
end     
%%%%%%%%%%%%%% COPIED %%%%%%%%%%%%%%%%%%%%%%%%%%
%sizeOfFile = 509;

%xdata1 = [8 2 11 6 5 4 12 9 6 1];
%ydata1 = [3 10 3 6 8 12 1 4 9 14];

%xdata1 = xdata1';
%ydata1 = ydata1';

meanX = sum(xdata) / sizeOfFile;

meanY = sum(ydata) / sizeOfFile;

for i = 1:sizeOfFile 
    slope1 = (xdata(i,1) - meanX) * (ydata(i,1) - meanY) / (xdata(i,1) - meanX)^(2);
end 

yInter = meanY - slope1*meanX;

fit = slope1*xdata + yInter;
%plot(xdata,ydata,'+b')
hold on
%plot(xdata,fit,'k')



%errorbar(xdata,ydata,uncert,'c');
%plot(xdata,ydata,'b');
plot(alphaM,alphaN,'+b')

plot(alphaM,yfit,'k');

%histogram(ydata,8)

%axis([0.3 2 -1.5 0])

%%%%%%%%%%%%%% COPIED %%%%%%%%%%%%%%%%%%%%%%%%%%



prediction1 = C1 + C2*((.2).^(-1));
prediction2 = C1 + C2*((14).^(-1));



pointuncertainty1 = sqrt((LHS(1,1)).^(2) + ((LHS(2,2) * ((.2).^(-1)))).^(2))
pointuncertainty2 = sqrt((LHS(1,1)).^(2) + ((LHS(2,2) * ((14).^(-1)))).^(2))