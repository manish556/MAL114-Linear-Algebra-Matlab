function [ N ] = fn_basis_of_null_space( A )
% takes a matrix as argument and returns null basis of null space in matrix
% form (columnwise)

pv=fn_pv_col(fn_rref(A));
npv=fn_non_pv_col(fn_rref(A));

rref_A=fn_rref(A);

T=-rref_A(1:length(pv),npv);
E=eye(length(npv));

N=zeros(length(A),length(npv));
N(pv,:)=T;
N(npv,:)=E;

end