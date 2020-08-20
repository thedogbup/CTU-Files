close all;

[X, Y] = meshgrid(1:32, 1:32);
Z = exp(cos(Y)) ./ X;

figure('Name', '3D Plot')
subplot(1, 2, 1)
mesh(X, Y, Z)
title('3D Plot')
xlabel('X axis')
ylabel('Y axis')
zlabel('Z axis')

subplot(1, 2, 2)
surf(X, Y, Z)
title('3D Plot')
xlabel('X axis')
ylabel('Y axis')
zlabel('Z axis')