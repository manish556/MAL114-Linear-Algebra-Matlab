function [] = fn_number_of_sol( A,B )

% takes coefficient matrix and constant matrix as arguments and
% printts number of solutions matrix have and prints solution if it is
% uniqueue

[~,n]=size(A);
rk=fn_rank(A);
AUG=[A B];
[~,n2]=size(AUG);
rk2=fn_rank(AUG);

% if rank of augmented matrix equal to rank of coefficient matrix then
% unique or infinite soln

% if rank of augmented matrix is more, then inconsistent equations so no
% solutions

% rank of augmented matrix can't be less than coefficient matrix


if(rk==rk2)   %%consistent
   if(rk==n)
      fprintf('unique solution.\n');
   else  % rk<n   or  rk>n (impossible)
      fprintf('infinite solutions.\n');
   end
else          %%inconsistent
   fprintf('no solution.\n');
end

end