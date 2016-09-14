function X = fn_sor( A,B,tol,X,w )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

[m,n]=size(A);
% X=zeros(n,1);

D=zeros(m,n);
for i=1:m
    D(i,i)=A(i,i);
end

% R=A-D;
itr=0;

while (norm((B-A*X),1)>tol)
itr=itr+1;

for i=1:n
    sm1=0;
    for j=1:i-1
       sm1=sm1+A(i,j)*X(j);        
    end
    sm2=0;
    for j=i+1:n
       sm2=sm2+A(i,j)*X(j); 
    end
    
   X(i)=(1-w)*X(i)+w*(B(i)-sm1-sm2)/A(i,i);

end

end

itr
end
