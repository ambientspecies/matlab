function product = vectorprod( x )
%   PRODUCT = VECTORPROD( X )
%   Input: A vector, x, with n entries
%   Output: A vector representing the product of all entries of x except for itself  
zero = (x == 0) ;
if sum(zero) == 0
    product = prod(x) ./ x
elseif(sum(zero) == 1)
    product = prod(x + zero) * zero
else
    product = zeros(1,length(x))
end

