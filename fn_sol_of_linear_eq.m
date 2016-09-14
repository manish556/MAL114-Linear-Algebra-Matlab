function [] = fn_sol_of_linear_eq( A,B )

% takes coefficient matrix and constant matrix as arguments and
% printts number of solutions matrix have and prints solution if it is
% uniqueue

[~,n]=size(A);
rk=fn_rank(A);
rref_A=fn_rref(A);

AUG=[A B];
[~,n2]=size(AUG);
rk2=fn_rank(AUG);
rref_AUG=fn_rref(AUG);

% if rank of augmented matrix equal to rank of coefficient matrix then
% unique or infinite soln

% if rank of augmented matrix is more, then inconsistent equations so no
% solutions

% rank of augmented matrix can't be less than coefficient matrix


if(rk==rk2)
   if(rk==n)
     disp('X = ');
       disp(rref_AUG(:,n2));
   else  % rk<n   & rk>n impossible
      fprintf('\ninfinite solutions.\n');
      N=fn_basis_of_null_space(A);
      pv=fn_pv_col(rref_A);
      C=zeros(n,1);
      C(pv)=rref_AUG(1:length(pv),n2);

      fprintf('Solutions of the equation are of the type: any vector of(span N) + C\n');
      disp('where k is any constant, N is null space basis of coeff matrix(columnwise) and C is another vector');
      disp('N =');
      disp(N);
      disp('C =');
      disp(C);
      
      
   end
else
   fprintf('no solution.\n');
end

end