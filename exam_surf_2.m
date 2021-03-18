x = 0 : 0.05*pi : pi;
y = 0 : 0.05*pi : pi;

[X_mg, Y_mg] = meshgrid(x , y);

Z_mg = sin(X_mg) .* sin(Y_mg);

surf(X_mg, Y_mg, Z_mg)
xlabel('X-axis')
ylabel('Y-axis')
zlabel('Z = f(x, y) = sin(x)*sin(y)')
colorbar % 색깔에 따른 양을 나타냄
shading interp % 선이 없어짐
shading flat % 박스가 생김
shading faceted % 원래의 선이 생김
colormap hot % 그래프 색깔 변경
colormap jet % 그래프 색깔 변경
colormap summer % 그래프 색깔 변경
colormap(flipud(colormap)) % 색깔 반전
ylim([0 pi]) % y좌표 범위 제한
xlim([0 pi]) % x좌표 범위 제한
zlim([0 2]) % z좌표 범위 제한
axis equal % x, y, z 좌표를 동일한 비율로 보여줌
axis normal % x, y, z 좌표를 원래의 비율로 보여줌
alpha(0.8) % 투명도 조절(0~1)
view(3) % 그래프를 어떤 측면에서 볼지 결정