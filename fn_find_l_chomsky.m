function [ L ] = fn_find_l_chomsky( A )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
tic
X=fn_sym_positive_def(A);

if X~=[1;1]
    disp('Not sym and positive def');
else
 [m,n]=size(A);
 L=zeros(m,m);

 for i=1:m
     for j=1:i-1
         sum=0;
         for k=1:j-1
             sum=sum+L(i,k)*L(j*k);
         end
         L(i,j)=(A(i,j)-sum)/L(j,j);
     end
     
     sum=0;
     for k=1:i-1
         sum=sum+L(i,k)*L(i,k);
     end
     L(i,i)=sqrt(A(i,i)-sum);
    
end

end
toc;
end