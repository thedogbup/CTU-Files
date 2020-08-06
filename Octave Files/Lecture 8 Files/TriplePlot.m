x = linspace(0, 2*pi, 64);

y1 = sin(x);
y2 = cos(x);
y3 = sin(x) .* cos(x);
y4 = sin(cos(x));
y5 = y1 - y2;

f1 = figure('Name', 'Trig Graphs 1')
f2 = figure('Name', 'Trig Graphs 2')

figure(f2)
plot(x, y5)

figure(f1)
subplot(3, 3, [1 2])
plot(x, y1, x, y2)
title('Sine & Cosine Graph')
xlabel('Units')
ylabel('Amplitude')
grid on;
grid minor on;

legend('sin(x)', 'cos(x)')

subplot(3, 3, [3 6 9])
plot(x, y3)
title('Sine * Cosine Graph')
xlabel('Units')
ylabel('Amplitude')
grid on;

subplot(3, 3, [4 5 7 8])
plot(x, y4)
title('sin(cos(x)) Graph')
xlabel('Units')
ylabel('Amplitude')
grid on;