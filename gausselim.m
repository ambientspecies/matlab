function [ wf, xval ] = gausselim( A, b )
%[ WF, XVAL ] = GAUSSELIM( A, B )
%Input:     Passing a nxn matrix for A and nx1 vector for b to be solved
%via naive Gaussian elimination and backwards subsitution.
%Output:    If given a suitable matrix and vector, the output will be the
%matrix w in echelon form and correct x values for system.
format long;
w = combine(A, b);
[n,m] = size(w);
x = zeros(n,1);
for j = 1 : n-1
    if w(j,j) < 10^-7; error('zero pivot encountered'); break; end
    for i = j+1 : n
        mult = A(i,j)/A(j,j);
        for k = j+1 : n
            A(i,k) = A(i,k) - mult*A(j,k);
        end
        w(i,n+1) = w(i,n+1) - mult*w(j,n+1);
    end
end

Z = triu(A);
temp = w(:,end);
wf = [Z temp]

for i = n : -1 : 1
    if Z(n,n) == 0; error('can not divide by zero'); break; end
    for j = i+1 : n
        w(i,n+1) = w(i,n+1) - Z(i,j)*x(j);
    end
    x(i) = w(i,n+1)/Z(i,i);
end

function[comb] = combine(A,b)
    comb = [A b];
end
xval = x
end

