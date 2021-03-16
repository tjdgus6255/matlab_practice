data = load ('data_korea_population_change_from_1960_to_2067.txt') ;
% 'data_korea_...'파일을 불러와 data 변수에 load
% ';' 은 command 창에 data를 표시 하지않음을 나타냄
year = data(1, : ) ; 
totalPopulation = data(2, : ) ;
malePopulation = data(3, : ) ;
femalePopulation = data(4, : ) ;

plot(year, totalPopulation, '*', ...
     year, malePopulation, 'd', ...
     year, femalePopulation, '^')
xlabel('Year')
ylabel('Population')
legend('Total Population', ...
       'Male Population', ...
       'Female Population')
grid on % plot에 줄 표시
text(2000, 1.5e7, 'Source : KOSIS.KR')
% text(x, y, txt) - x와 y좌표에 문구(txt) 작성