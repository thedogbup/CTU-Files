
y1 = [5, 6, 3, -9, 10, 4];
f1 = figure('Name', 'Bar Graph')
bar(y1)

y2 = [0.1 0.3 0.5 0.1];
f2 = figure('Name', 'Pie Chart')
pie(y2)

x3 = [1, 5, 7, 3, 8, -2];
y3 = [8, -1, 2, 0, 0, 10];
f3 = figure('Name', 'Scatter Plot 1')
scatter(x3, y3)

f4 = figure('Name', 'Scatter Plot 2')
plot(x3, y3, 'o')