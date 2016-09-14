function [V] = fn_orthogonal( W )
% Takes the vectors columnwise in a matrix as argument an return
% a matrix with orthogonal vectors (column wise)

[m,n]=size(W);
V=W;
for i=1:n
    s=zeros(m,1);
    for j=1:i-1
        s=s+dot(W(:,i),V(:,j))/(dot(V(:,j),V(:,j)))*V(:,j);
    end
    V(:,i)=W(:,i)-s;
end

end
