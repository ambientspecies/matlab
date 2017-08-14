function matrix = circumatrix( vector )
%MATRIX = CIRCUMATRIX( VECTOR )
%   Input: A vector 
%   Output: A circulant matrix with dimensions equal to the length of given
%   vector

len = length(vector) ;
matrix = vector(1)*eye(len) ;

for i = 1 : len-1
    ut = vector(i+1)*ones(1, len-i) ;
    lt = vector(i+1)*ones(1, i) ;
    matrix = matrix + diag(ut,i) + diag(lt, -(len-i)) ;
end

end

