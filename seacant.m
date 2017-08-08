function xc = seacant(a, b, tol)
%XC = SEACANT(F, A, B, TOL)
%Input:     a represents the lower bound and b represents the upper bound.
%Finally, tol is the tolerance for error.
%Output:    The approximation for a root of the function between the given
%bounds.
format long
n = 2;
x0 = a; x1 = b;
fx0 = subr(x0); fx1 = subr(x1);
disp(sprintf('%4d %15.12f %15.12f',0,x0,fx0))
disp(sprintf('%4d %15.12f %15.12f',1,x1,fx1))
while abs(x1-x0) >= tol
    newx1 = x1 - (fx1*(x1 - x0))/(fx1 - fx0);
    newfx1 = subr(newx1);
    disp(sprintf('%4d %15.12f %15.12f',n,newx1,newfx1))
    x0 = x1;
    fx0 = fx1;
    x1 = newx1;
    fx1 = newfx1;
    n = n + 1;
end
xc = x1;
    function[f] = subr(x)
        %f = x^5 + x^3 + 3;
        f = exp(x) + sin(x) - 4;
    end
end

