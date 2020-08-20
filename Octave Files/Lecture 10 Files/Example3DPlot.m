%==[Flowerbox]=================
%| Filename: Example3DPlot.m  |
%| Purpose: Basic plot        |
%| bup                        |
%| 8/3/2020                   |
%|____________________________|

[X, Y] = meshgrid(1:0.5:16, 1:0.5:16);
Z = exp(sqrt(X)) .* cos(Y);
subplot(1, 2, 1)
surf(X, Y, Z);

title('Exponential Square Root Cosine Graph')
xlabel('X Values')
ylabel('Y Values')
zlabel('Z Values')