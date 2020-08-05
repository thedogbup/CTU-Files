%==[Flowerbox]=================
%| Filename: ExampleSubplot.m |
%| Purpose: Basic subplots    |
%| bup                        |
%| 8/4/2020                   |
%|____________________________|
close all;

x = linspace(1, 2 * pi, 32);
y1 = sin(x);
y2 = cos(x);
y3 = y1 + y2;

f1 = figure('Name', 'sin(x) and cos(x) Subplot');
f2 = figure('Name', 'tan(x) Plot');

figure(f1)
subplot(2, 1, 1)
hold on;
plot(x, y1)
plot(x, y2)
legend('sin(x)', 'cos(x)')

subplot(2, 1, 2)
plot(x, y3)
legend('sin(x) + cos(x)', 'Location', 'southeast')
legend('boxoff')

figure(f2)
hold on;
plot(x, tan(x))