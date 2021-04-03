% for i = start # : increment : end #
%   statement
% end
for a = 1 : 1 : 10
    disp(['The value of a', ' example', num2str(a)]) % a의 값만 나오게 함
    pause(1)
end

% disp(a)만 할 경우에는 a를 string으로 알아서 바꾸어 주나
% The value of a example이라는 string이랑 a를 같이 출력하고자 하는 경우
% a를 string으로 바꾸는 과정을 직접 해주어야 함
% num2str은 정수를 문자열로 만드는 함수

% 구구단
for i = 1 : 1 : 9
    for j = 1 : 1 : 9
        disp(i*j)
        pause(1)
    end
end

% 구구단 행렬
for i = 1 : 1 : 9
    for j = 1 : 1 : 9
        A(i, j) = i*j
    end
end