function x = fn_is_li( A )
% Takes a matrix with all vectors columnwise as argument and returns 1 if they are
% linearly independent else returns 0

[~,n]=size(A);

rk=fn_rank(A);

if(rk==n)
    x=1;
else
    x=0;
end

end

