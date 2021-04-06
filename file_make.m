clear all; close all; clc;

fid = fopen('file.txt', 'w')
for num_apple = 1 : 10
    fprintf(fid, 'I have %d apples\n', num_apple)
end
fclose(fid)

x = 0 : 0.1*pi : 2*pi
y = sin(x)
plot(x,y,'-*')
numData = length(x);
fid2 = fopen('file2.txt','w');
for ii = 1:numData
    fprintf(fid2,'x = %.4f y = %.4f\n',x(ii), y(ii))
end
fclose(fid2);