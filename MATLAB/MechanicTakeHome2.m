
clear
%t = linspace(0,10,1000);
t = 0:0.0001:1;
w_0 = 10*pi;
f_0 = 5;
m = 1;


pos = (-1/2) * (sin(w_0*t)-((w_0.*t).*(cos(w_0.*t))));
force = f_0*sin(w_0.*t);
line2 = ones(size(t)) * 5;
line3 = ones(size(t)) * -5;

%plot(t, pos);
%hold
%plot(t, line2);
%plot(t, line3);
%plot(t, force);

idx = find(pos==line2);
if isempty(idx)
idx = find(diff(sign(pos-line2)),1);
end


%idx = find(pos - line2 < eps, 1);
px = t(idx)
py = pos(idx);


idx1 = find(pos==line3);
if isempty(idx1)
idx1 = find(diff(sign(pos-line3)),1);
end


%idx = find(pos - line2 < eps, 1);
px1 = t(idx1)
py1 = pos(idx1);


figure(1)
x1 = 0.3789;
y1 = 6;
txt1 = ' t = 0.3789 ';

x2 = 0.4713;
y2 = -6;
txt2 = ' t = 0.4713 ';


plot(t, pos,'r', t, line2,'k', t, line3,'k', px1, py1, 'b.', px, py, 'b.', 'MarkerSize', 18)
hold
text(x1,y1,txt1,'HorizontalAlignment','right')
text(x2,y2,txt2,'HorizontalAlignment','right')

title('$F_0$ v. t', 'FontSize', 24, 'interpreter', 'latex');
xlabel('t(s)', 'interpreter','latex','FontSize', 24)
ylabel('$F_0$', 'interpreter','latex','FontSize', 24)


