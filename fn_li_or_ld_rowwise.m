function [] = fn_li_or_ld_rowwise( A )
% Take a matrix with all vectors rowwise as argument and prints whether they are linearly dependent or
%  independent

[m,n]=size(A);
rk=fn_rank(A);

if(rk==m)
    fprintf('Linearly independent.\n');
else
    fprintf('Linearly dependent.\n');
end

end

