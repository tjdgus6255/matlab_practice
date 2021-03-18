
clear all; close all; clc;

% global temperature surf plot

data = load('amaps.txt');

log = data(:, 3); % 경도
lat = data(:, 4); % 위도
T = data(:, 5); % 온도

index = find(T > 10); %온도가 이상한 값을 찾아냄
T(index) = NaN; % 온도가 10도가 넘는 값들을 무효화(제거)
% 3차원 그래프를 그리기 위해서는 matrix를 사용해야 함
% griddata 사용

[X, Y] = meshgrid(-180:1:180, -90:1:90);
Temp = griddata(log, lat, T, X, Y) % X, Y는 data mapping을 위해 사용됨

surf(X, Y, Temp)
view(2)
shading flat
colorbar
colormap hot
colormap(flipud(colormap))
caxis([-0.2 4.1]) % 시작점과 끝점 설정