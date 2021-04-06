num1 = 1;
num2 = 2;
operation = 'divide';
switch operation
    case {'add', 'add2'} % 선택지가 두개  
        num1 + num2 
    case 'subtract'
        num1 - num2
    case 'multiply' 
        num1 * num2
    case 'divide'
        num1 / num2
    otherwise
        disp('No operation done')
end

% if example
operation = 'divide'
if strcmp(operation, 'add')
    num1 + num2
elseif strcmp(operation, 'subtract')
    num1 - num2
elseif strcmp(operation, 'multiply')
    num1 * num2
elseif strcmp(operation, 'divide')
    num1 / num2
end