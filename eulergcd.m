function c = eulergcd( a, b )
%C = EULERGCD( A, B )
%   Input: Values a and b which will be used to calculate the greatest
%   common divisor by Euler's algorithm
%   Output: The greatest common divisor of the two given numbers

r = rem(a, b) ;

while( r ~= 0 )
    a = b ;
    b = r ;
    r = rem(a, b) ;
end

c = b ;

end

