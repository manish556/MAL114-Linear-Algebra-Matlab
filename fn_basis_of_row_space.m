function X = fn_basis_of_row_space( A )
% Takes a matrix as argument and returns a matrix containing basis of row pace(rowwise)

rref_A=fn_rref(A);
rk=fn_rank(A);

X=rref_A(1:rk,:);
     
end
