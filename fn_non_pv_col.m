function npv = fn_non_pv_col( A )
% Takes a matrix as argument and returns a vector containig the index of
% the non pivot columns

pv=fn_pv_col(A);
npv=1:length(A);
npv(pv)=[];

end