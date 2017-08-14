function [degf, degc] = tempconverter( degree, scale )
%   [ DEGF, DEGC] = TEMPCONVERTER( DEGREE, SCALE )
%   Input: A value representing a temperature and a letter representing the
%   scale you are using. Use c for Celsius and f for Fahrenheit.
%   Output: The temperature in both Celsius and Farenheit

if( scale == 'f' )
    degc = (degree-32)*(5/9)
    degf = degree
elseif( scale == 'c' )
    degf = degree*1.8 + 32
    degc = degree
else
    error('Unrecognized scale. Use c for Celsius and f for Fahrenheit')

end

