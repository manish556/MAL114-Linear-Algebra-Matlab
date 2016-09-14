function [] = fn_li_or_ld( A )
% Take a matrix with all vectors columnwise as argument and prints whether they are linearly dependent or
% independent

[~,n]=size(A);

rk=fn_rank(A);

if(rk==n)
    fprintf('Linearly independent.\n');
else
    fprintf('Linearly dependent.\n');
end

end

