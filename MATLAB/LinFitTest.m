import1 = dlmread('/Users/travishodge/Desktop/NDREU/models/z-3c-0.5N-0.5.csv');

xdata = import1(:,4);
ydata = import1(:,6);

sizeOfFile = 509;


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
plot(xdata,ydata,'+b')
hold on
plot(xdata,fit,'k')

%axis([0.3 2 -1.5 0])



