function B = fn_basis_of_row_space_containing_rows_of_A( A )
% Takes a matrix A as argument and returns a basis of row space containing rows of A

A_trans=A';
C=fn_basis_of_column_space(A_trans);
B=C';

end
