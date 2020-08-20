%==[Flowerbox]=================
%| Filename: Color3D.m        |
%| Purpose: 3D plot colors    |
%| bup                        |
%| 8/20/2020                  |
%|____________________________|

close all;

[X, Y] = meshgrid(1:0.5:16, 1:0.5:16);
Z = cos(sin(X)) + sin(cos(Y));

subplot(2, 2, 1)
surf(X, Y, Z);
title('No Colormap')


subplot(2, 2, 2)
C = sin(X * pi / 2) .* sin(Y * pi / 2);
surf(X, Y, Z, C);
title('Colormap 1 Surf')

subplot(2, 2, 3)
C = X .* Y;
mesh(X, Y, Z, C);
title('Colormap 2 Mesh')

subplot(2, 2, 4)
C = X .* Y;
mesh(X, Y, Z, C, 'FaceAlpha', 0.75, 'FaceColor', 'interp', 'EdgeColor', ...
    '#FFF', 'LineStyle', '--', 'FaceLighting', 'gouraud');
title('Colormap 2 Mesh Custom')