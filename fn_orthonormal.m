function [ W ] = fn_orthonormal( V )
% takes the vectors columnwise in a matrix as argument an return
% a matrix with orthogonal vectors (column wise)

[~,n]=size(V);
W=V;
for i=1:n
    for j=1:i-1
        W(:,i)=W(:,i)-fn_projection(V(:,i),W(:,j));
    end
     W(:,i)=W(:,i)/norm(W(:,i));
end

end