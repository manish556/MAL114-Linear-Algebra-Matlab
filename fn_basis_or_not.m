function [] = fn_basis_or_not( A )
% Takes a matrix with all vectors columnwise and prints whether the form a basis or not

[m,n]=size(A);
rk=fn_rank(A);

if (rk>=n&&rk>=m)
 disp('linearly independent and spams R so forms a basis');
elseif (rk>=n&&rk<m)
 fprintf('linearly independent but does not spam R%d so doesn not form basis\n',m);
elseif(rk<n&&rk>=m)
 disp('linearly dependent and spams R so does not form basis');
else
 disp('linearly dependent and does not spam R so does not form basis');

end