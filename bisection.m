function xc = bisection(f, a, b, tol)
%XC = BISECTION(F, A, B, TOL)
%Input:     Passing through a function f to be evaluated by the bisection
%method, a represents the lower bound and b represents the upper bound.
%Finally, tol is the tolerance for error.
%Output:    The approximation for a root of the function between the given
%bounds.
format long
if sign(f(a))*sign(f(b)) >= 0
    error('f(a)f(b)<0 not satisfied!')
end
fa = f(a);
fb = f(b);
n = 0;
while (b - a)/2 > tol
    c = (a + b)/2;
    fc = f(c);
    disp(sprintf('%3i%12.8f%12.8f%12.8f%12.8f%', n, a, b, c, (b-a)/2))
    if fc == 0
        break
    end
    if sign(fc)*sign(fa)<0
        b = c;fb = fc;
    else
        a = c;fa = fc;
    end
    n = n + 1;
end
xc = c;

end

