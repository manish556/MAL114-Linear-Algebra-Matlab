function X = fn_gauss_jacobi( A,B,tol,X )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

[m,n]=size(A);
% X=zeros(n,1);

D=zeros(m,n);
for i=1:m
    D(i,i)=A(i,i);
end

Y=X;
% R=A-D;
itr=0;
while (norm((B-A*X),1)>tol)
itr=itr+1;
for i=1:n
    sm=0;
    for j=1:n
        if j~=i
          sm=sm+A(i,j)*X(j);        
        end
    end
    Y(i)=1/A(i,i)*(B(i)-sm);
end

 X=Y;

end

itr
end
