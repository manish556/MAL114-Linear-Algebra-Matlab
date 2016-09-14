function X = fn_return_sol_of_linear_eq( A,B )
% Takes 2 matrices: coefficient matrix(all coeff of x1 in same row, coeff of x2 in same row..)
% and constant matrix as arguments. And returns solution matrix X if unique
% solution, else returns empty matrix

[~,n]=size(A);
rk=fn_rank(A);
AUG=[A B];
rk2=fn_rank(AUG);

% if rank of augmented matrix equal to rank of coefficient matrix then
% unique or infinite soln

% if rank of augmented matrix is more, then inconsistent equations so no
% solutions

% rank of augmented matrix can't be less than coefficient matrix
rref_AUG=fn_rref(AUG);
X=zeros(0,0);
if(rk==rk2 && rk==n)  % case of unique solution
        X=rref_AUG(:,n+1);
end

end