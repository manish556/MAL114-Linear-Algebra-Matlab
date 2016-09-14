function x = fn_is_basis( A )
% Takes a matrix A m*n with all vectors columnwise and returns 1 if these
% vectors forms basis of R(m) else return 0

[m,n]=size(A);
rk=fn_rank(A);

if (rk>=n&&rk>=m)
 x=1;
else x=0;
    
end