function [ roots, flag ] = quadeq( a, b, c)
%   [ ROOTS, FLAGS ] = QUADEQ( A, B, C )
%   Input: Values a, b, c representing the coefficients to the quadratic
%   equation ax^2+bx+c
%   Output: The roots of the user defined quadratic equation and a flag.
%   Flags:      0 no solutions
%               1 one solutions
%               2 infinitely many solutions
%               3 two solutions
if (a == 0)
    if (b == 0)
        if (c == 0)
            flag = 2
            roots = []
        end
    flag = 1
    roots = c
    end
flag = 1
roots = -b/c
else
    v = ((-b - sqrt(b^2 - 4*a*c))/(2*a)) ;
    w = c/(a*v) ;
    if ((a*v) == 0)
        roots = v;
    else
        roots = [v, w]
    flag = 3
    end
end

