
% no griddata example
x = 0 : 1 : 4;
y = 0 : 1 : 4;
[X_mat, Y_mat] = meshgrid(x, y);
Z_mat = [ 0 0 0 0 0; ...
          0 1 1 1 0; ...
          0 1 2 1 0; ...
          0 1 1 1 0; ...
          0 0 0 0 0]
surf(X_mat, Y_mat, Z_mat)
xlabel('x')
ylabel('y')
zlabel('z')
shading faceted

clear all; close all; clc;

% griddata example
x = -1 : 0.05 : 1;
y = -0.5 : 0.025 : 0.5;
[X_mat, Y_mat] = meshgrid(x, y);
Z_mat = zeros(length(y), length(x));
surf(X_mat, Y_mat, Z_mat)
pt = [-1, -0.5, 0; ...
      -1,  0.5, 0; ... 
       1,  0.5, 0; ... 
       1, -0.5, 0; ...
       0, 0, 1];
Pyramid = griddata(pt(:, 1), pt(:, 2), pt(:, 3), X_mat, Y_mat);
surf(X_mat, Y_mat, Pyramid)