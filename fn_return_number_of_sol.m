function x = fn_return_number_of_sol( A,B )

% Takes coefficient matrix and constant matrix as arguments and
% returns 1 if unique solution, returns 0 if no solution, and returns -1 if infinite solutions

[~,n]=size(A);
rk=fn_rank(A);
AUG=[A B];
rk2=fn_rank(AUG);

% if rank of augmented matrix equal to rank of coefficient matrix then
% unique or infinite soln

% if rank of augmented matrix is more, then inconsistent equations so no
% solutions

% rank of augmented matrix can't be less than coefficient matrix


if(rk==rk2)
   if(rk==n)
      x=1;
   else  % rk<n   & rk>n impossible
      x=-1;
   end
else
   x=0;
end

end