function s = pirate( p, n )
%S = PIRATE( P, N )
%   Input: Enter, p, Probability for Pirate to move forward and n for
%   number of times to run
%   Output: The probability the pirate will make it to the end of the boat.
%   If the pirate does not reach the end by 2000 steps or falls off the
%   side then the probability is zero.
q = (1 - p) / 2 ;
qdir = q + p ;
s = 0 ;
for i = 1 : n
    steps = 1 ;
    pos = [0, 0] ;
    while((abs(pos(1)) <= 5) && (pos(2) < 50) && (steps < 2000))
        steps = steps + 1 ;
        r = rand ;
        if(r < q)
            pos(1) = pos(1) + .25 ;
        elseif(r < qdir)
            pos(2) = pos(2) + .25 ;
        else
            pos(1) = pos(1) - .25 ;
        end
    end
    s = s + (pos(2) >= 50) ;
end

s = s / n ;

end

