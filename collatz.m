function [ count, maxsteps ] = collatz( x )
%[COUNT, MAXSTEPS ] = COLLATZ( X )
%   Input: A value which will be used in the Collatz conjecture from 1 to x
%   Output: Count which represents the vector of steps per iteration of the
%   vector x. Also, maxsteps, which represents the largest number of steps
%   in the sequence. The program will also graph the number of steps for
%   the sequence and then for the largest number of steps as well.
v = [1:x] ;
count = zeros(1,x) ;
for i = 1 : x 
    t = 0 ;
    while ( v(i) ~= 1 )
        t = t + 1 ;
        if mod(v(i) , 2) == 0
            v(i) = v(i) / 2 ;
        else
            v(i) = 3*v(i) + 1 ;
        end
    end
    count(i) = t ;
end

[maxs, index] = max(count) ;
maxsteps = zeros(1,maxs) ;
temp = index ;
for i = 1 : maxs
    if mod(temp , 2) == 0
        temp = temp / 2 ;
    else
        temp = 3*temp + 1 ;
    end
    maxsteps(i) = temp ;
end
subplot(2,1,1), bar(count)
axis tight
xlabel('1 to x-value')
ylabel('# of steps')
subplot(2,1,2), bar(maxsteps)
axis tight
xlabel('# of steps')
ylabel('xi values')
end

