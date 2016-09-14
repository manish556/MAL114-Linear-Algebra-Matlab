function X = fn_basis_of_column_space( A )
% Summary of this function goes here
%  takes a matrix as input and return a matrix containing bases of column space
%  columnwise

rref_A=fn_rref(A);

pv=fn_pv_col(rref_A);
X=A(:,pv);

end