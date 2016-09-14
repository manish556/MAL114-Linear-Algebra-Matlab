function rank_of_A = fn_rank( A )
% Takes a matrix as argument and returns rank of the matrix

[m,n]=size(A);
rref_A=fn_rref(A);

rank_of_A=0;
for p=1:m
    for t=1:n
        if rref_A(p,t)~=0
            rank_of_A=rank_of_A+1;
            break;
        end
    end
end

end


