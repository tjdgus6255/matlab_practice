
% This scripts plots the function 
% f(x, y) = sin(x) * sin(y) 

% no meshgrid
X_mat = [0 1 2 3; ...
         0 1 2 3; ...
         0 1 2 3; ...
         0 1 2 3];
Y_mat = [0 0 0 0; ...
         1 1 1 1; ...
         2 2 2 2; ...
         3 3 3 3];
Z = sin(X_mat) .* sin(Y_mat); 
% matrix에서 각각의 자리끼리 곱하기 위해 '.*' 사용
figure(1)
surf(X_mat, Y_mat, Z)

% meshgrid
x = 0 : 0.05*pi : pi;
y = 0 : 0.05*pi : pi;

[X_mg, Y_mg] = meshgrid(x , y);

Z_mg = sin(X_mg) .* sin(Y_mg);
figure(2)
surf(X_mg, Y_mg, Z_mg)
xlabel('X-axis')
ylabel('Y-axis')
zlabel('Z = f(x, y) = sin(x)*sin(y)')

Z_mg_2 = sin(X_mg) * 1;
figure(3)
surf(X_mg, Y_mg, Z_mg_2)
xlabel('X-axis')
ylabel('Y-axis')
zlabel('Z2 = f(x, y) = sin(x)*1')


Z_mg_3 = 1 * sin(Y_mg);
figure(4)
surf(X_mg, Y_mg, Z_mg_3)
xlabel('X-axis')
ylabel('Y-axis')
zlabel('Z3 = f(x, y) = 1*sin(y)')