x = dlmread('/Users/Hodge/Documents/Computational/Final Project/text.csv');
y = dlmread('/Users/Hodge/Documents/Computational/Final Project/text1.csv');
z = dlmread('/Users/Hodge/Documents/Computational/Final Project/text2.csv');

num = 1/19201;
for ind=2:1:1200
  plot3(x(2:ind),y(2:ind),z(2:ind))
  axis([min(x) max(x) min(y) max(y) min(z) max(z)])
  drawnow
  pause(1/19201)
  disp(ind)
end

