function matrix = matrixprogram( a , b , c , n )
% [ MATRIX ] = MATRIXPROGRAM( A , B , C , N )
%   Input: scalars a, b, c and positive integer n
%   Output: nxn matrix with given a b c values as diagonals

if ( n >= 0 )
    v = ones(n-1, 1) ;
    matrix = a*eye(n) + diag(v * b,-1) + diag(v * c,1) ;
else
    error('n must be a positive integer')
    
end
end

