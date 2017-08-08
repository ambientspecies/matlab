taggeddaily = [7 88 41 10 1 44 13 7 28 2] ;
time = [0 1 2 3 4 5 6 7 8 9] ;
cumulativetaggeddaily = [7 95 136 146 147 191 204 211 239 241] ;

figure(1);
plot(time,taggeddaily)
xlabel('Days from Infection');
ylabel('Infected per Day');
title('Number of Infected per Day')

figure(2);
plot(time,cumulativetaggeddaily)
xlabel('Days from Infection');
ylabel('Total Infected at given Day');
title('Number of Total Infected per Day')
hold on
logistic =@(t) (279*exp(279*(0.0035*t - 0.013118 ))) ./ (1+exp(279*(0.0035*t-0.013118))) ;
fplot(logistic, [0 9], 'b')

figure(3);
plot(time,cumulativetaggeddaily)
xlabel('Days from Infection');
ylabel('Total Infected at given Day');
title('Number of Total Infected per Day')
hold on
logistic =@(t) (279*exp(279*(0.0035*t - 0.013118 ))) ./ (1+exp(279*(0.0035*t-0.013118))) ;
fplot(logistic, [0 9], 'b')
hold on
estimate = @(t) 279 - 279*exp((279)*((-0.010)*(5*exp(-t./2)+1)*(1/6).*t+0.013118)) ./ (1+exp((279)*((-0.010)*(5*exp(-t./2)+1)*(1/6).*t+0.013118))) ;
fplot(estimate, [0 9], 'r')


figure(4);
logistic =@(t) (279*exp(279*(0.0035*t - 0.013118 ))) ./ (1+exp(279*(0.0035*t-0.013118))) ;
fplot(logistic, [-9 9], 'b')
hold on
estimate = @(t) 279 - 279*exp((279)*((-0.01)*(9*exp(-t./5)+1)*(1/10).*t+0.013118)) ./ (1+exp((279)*((-0.01)*(9*exp(-t./5)+1)*(1/10).*t+0.013118))) ;
fplot(estimate, [-9 9], 'r')