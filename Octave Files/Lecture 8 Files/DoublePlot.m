x = linspace(0, 2*pi, 64);

y1 = sin(x);
y2 = cos(x);
y3 = sin(x) .* cos(x);

subplot(2, 1, 1)
plot(x, y1, x, y2)
title('Sine & Cosine Graph')
xlabel('Units')
ylabel('Amplitude')
grid on;
grid minor on;

legend('sin(x)', 'cos(x)')

subplot(2, 1, 2)
plot(x, y3)
title('Sine * Cosine Graph')
xlabel('Units')
ylabel('Amplitude')
grid on;