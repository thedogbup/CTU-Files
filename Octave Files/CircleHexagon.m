close all;

t=linspace(0,2*pi);
x=cos(t);
y=sin(t);
plot(x,y, 'r', 'linewidth', 1.5)
hold on;

theta=0:pi/3:2*pi;
a=cos(theta);
b=sin(theta);
plot(a,b,'-b.', 'linewidth', 1.5, 'MarkerSize', 20)

axis([-1.25 1.25 -1 1])