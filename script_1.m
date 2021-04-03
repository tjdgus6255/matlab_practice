
% load excel file
fileName = 'korea_30yr_weather_data.xlsx';
[num, txt, raw] = xlsread(fileName);
% num은 숫자만, txt는 텍스트만, raw는 둘다 불러옴

location = raw(4:end, 1); % raw(가로, 세로)
wind_speed_cell = raw(4:end, 7); % km/h
wind_speed = cell2mat(wind_speed_cell);
% wind_speed_cell은 cell임 이를 행렬로 바꾸어 wind_speed로 나타냄

Nsample = length(location);

% bar graph
bar(wind_speed)
% bar graph는 input을 cell이 아닌 행렬로 받아야하므로
% 위에서 cell을 행렬로 바꾸는 과정을 거침

% bar graph2
x = 1 : Nsample;
y = wind_speed;
bar(x, y, 0.8) % 0.8의 막대의 두께(0~1)
% bar(wind_speed)는 x의 값이 없으나 wind_speed의 갯수 77개를 알아서 만들어 넣어줌
ylabel('Wind Speed [km/h]')

%get gca='get current axes' 궁금하면 command창에 'gca'입력해보기
set(gca, 'XTick', [0:Nsample-1])
% [1:1:Nsample] [시작값:증가값:끝값]
set(gca, 'XTickLabelRotation', 80)
set(gca, 'Fontsize', 8)

%get gcf='get current figure'
set(gcf, 'Color', 'w')

location_color = cell(Nsample, 1)
location_color(:) = {'\color{red}'};
location_text = strcat(location_color, location);
% strcat('abc', 'def') -> = 'abcdef'
set(gca, 'XTickLabel', location_text)

% sort data
[wind_speed_sorted, idx] = sort(wind_speed, 'ascend');
location_sorted = location(idx);

% bar graph for sorted data
x = 1 : Nsample;
y = wind_speed_sorted;
bar(x, y, 0.8) % 0.8의 막대의 두께(0~1)
% bar(wind_speed)는 x의 값이 없으나 wind_speed의 갯수 77개를 알아서 만들어 넣어줌
ylabel('Wind Speed [km/h]')

%get gca='get current axes' 궁금하면 command창에 'gca'입력해보기
set(gca, 'XTick', [0:Nsample-1])
% [1:1:Nsample] [시작값:증가값:끝값]
set(gca, 'XTickLabelRotation', 80)
set(gca, 'Fontsize', 8)

%get gcf='get current figure'
set(gcf, 'Color', 'w')

location_color = cell(Nsample, 1)
location_color(:) = {'\color{red}'};
location_text = strcat(location_color, location_sorted);
% strcat('abc', 'def') -> = 'abcdef'
set(gca, 'XTickLabel', location_text)

% different color bar graph
Y = diag(y); 
bar(x,  Y, 'stacked') 
N = length(x)
color = jet(N);
for i = 1:N
    ha(i).FaceColor = color(i,:);
end
% bar(wind_speed)는 x의 값이 없으나 wind_speed의 갯수 77개를 알아서 만들어 넣어줌
ylabel('Wind Speed [km/h]')

%get gca='get current axes' 궁금하면 command창에 'gca'입력해보기
set(gca, 'XTick', [0:Nsample-1])
% [1:1:Nsample] [시작값:증가값:끝값]
set(gca, 'XTickLabelRotation', 80)
set(gca, 'Fontsize', 8)

%get gcf='get current figure'
set(gcf, 'Color', 'w')

location_color = cell(Nsample, 1)
location_color(:) = {'\color{red}'};
location_text = strcat(location_color, location_sorted);
% strcat('abc', 'def') -> = 'abcdef'
set(gca, 'XTickLabel', location_text)