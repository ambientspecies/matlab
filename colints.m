function matrix = colints( r, c )
%MATRIX = COLINTS( R, C )
%   Input: Values r and c which represent the number of rows and columns
%   Output: A matrix with user specificed dimensions whose columns are
%   successive integers.

matrix = zeros( r, c ) ;
v = ( 1:r )' ;

for i = 1 : c
    matrix(:,i) = (i*r + v) - r ;
end

end

