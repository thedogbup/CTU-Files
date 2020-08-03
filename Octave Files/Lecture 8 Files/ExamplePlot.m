%==[Flowerbox]=================
%| Filename: ExamplePlot.m    |
%| Purpose: Basic plot        |
%| bup                        |
%| 8/3/2020                   |
%|____________________________|

x = linspace(1, 2 * pi, 32);
y1 = sin(x);
y2 = cos(x);

title('Sin/Cos Graph')
xlabel('X Values')
ylabel('Y Values')

hold on;
plot(x, y1)
plot(x, y2)
legend('sin(x)', 'cos(x)')
