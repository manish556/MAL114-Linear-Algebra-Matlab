function X = gauss_j_sol( A,B )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

[m,n]=size(A);
X=zeros(n,1);

D=zeros(m,n);
for i=1:m
    D(i,i)=A(i,i);
end

Y=X;
R=A-D;

while (norm((B-A*X),1)>0.1)

for i=1:n
    sm=0;
    for j=1:n
        if j~=i
          sm=sm+A(i,j)*X(j,1);        
        end
    end
    Y(i,1)=1/A(i,i)*(B(i,1)-sm);
end

 X=Y;

end

end
