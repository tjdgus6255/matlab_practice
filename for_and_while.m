clear all ; clc

% example 1 - 5년후 잔액
balance = 10000;
interest_rate = 0.1;
year = 5;
for i = 1 : 1 : year
    balance = balance + balance*interest_rate
end

%example2 50000이 되는데 몇년 소요
balance = 10000;
objective_balance = 50000;
interest_rate = 0.1;
counter = 1;
while balance < objective_balance
    balance(counter) = balance + balance*interest_rate
    counter(counter) = counter + 1
end

year = counter;
plot(year, balance)
xlabel('Year')
ylabel('Balance')