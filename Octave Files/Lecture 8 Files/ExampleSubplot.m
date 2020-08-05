%==[Flowerbox]=================
%| Filename: ExampleSubplot.m |
%| Purpose: Basic subplots    |
%| bup                        |
%| 8/4/2020                   |
%|____________________________|

x = linspace(1, 2 * pi, 32);
y1 = sin(x);
y2 = cos(x);
y3 = y1 + y2;

subplot(2, 1, 1)
hold on;
plot(x, y1)
plot(x, y2)
legend('sin(x)', 'cos(x)')

subplot(2, 1, 2)
plot(x, y3)
legend('sin(x) + cos(x)', 'Location', 'southeast')
legend('boxoff')