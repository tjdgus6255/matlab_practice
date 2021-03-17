 close all
 
% plot sine function

x = 0 : 0.1*pi : 10*pi ;
y  =sin ( x ) ;
plot(x , y)
xlabel('x')
ylabel('y')
title('My Graph')
grid on
ylim([-1.5 1.5]) % y축 범위 설정
hold on

% how to use find

maxValue = max(y);
minValue = min(y);

indicesForSineMaxValue = find(y == maxValue) ;
% indicesForSineMaxValue - maxvalue 자리값
plot(x(indicesForSineMaxValue), ...
     y(indicesForSineMaxValue), '*')
% x, y의 자리값(최대) 출력
indicesForSineMinValue = find(y == minValue) ;
% indicesForSineMaxValue - minvalue 자리값
plot(x(indicesForSineMinValue), ...
     y(indicesForSineMinValue), 'd')
% x, y의 자리값(최소) 출력
legend('y=sin(x)', 'Max Values', 'Min Values')
hold off