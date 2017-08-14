function [ trap, simp, time ] = integrals( a, b, n, f )
%[ TRAP, SIMP ] = INTEGRALS( A, B, N, F )
%   Input: Value, a, which represents the lower bound and value, b, which
%   represents upper bound. N represents the number of subintervals on the
%   [a,b] domain. Finally, f, is the function that will be evaluated using
%   the trapezoidal rule and Simpson rule.
%   Output: The output will be the values corresponding to the integral
%   approximation using the trapezoidal rule and Simpson rule.

h = (b-a)/n ;
x = linspace(a, b, n+1) ;
y = f(x) ;
time = zeros(1, 2) ;
format long g

tic ;
trap = (h/2)*(y(1)+ 2*sum(y(2:n)) + y(end)) ;
time(1) = toc ;

tic ;
simp = (h/3)*(y(1) + 4*sum(y(2:2:n)) + 2*sum(y(3:2:n-1))+ y(end)) ;
time(2) = toc ;

end

