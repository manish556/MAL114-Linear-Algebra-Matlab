function [X P] = fn_jacobi_eigen( B )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

A=B;
[m,n]=size(B);

P=eye(m,n);

while ( max(max(abs(triu(A,1))))>0.000001 )

mx = max(max(abs(triu(A,1))));

i=0;
k=0;
flag=0;
for r=1:n
    for c=r+1:n
        if flag==0
         if abs(A(r,c))==mx
          i=r;
          k=c;
          flag=1;
         end
        else
            if abs(A(r,c))>mx
            i=r;
            k=c;
            end
        end
    end
end
i;
k;
A;
if(A(i,i)==A(k,k))
    if(A(i,k)>0)
        theta=pi/4;
    else
        theta=-1*pi/4;
    end
else
    theta = 1/2*atan(2*A(i,k)/(A(i,i)-A(k,k)));
end
theta
I=eye(m,n);
I(i,i)=cos(theta);
I(i,k)=-1*sin(theta);
I(k,i)=sin(theta);
I(k,k)=cos(theta);
I
A=I^-1*A*I;

P=P*I;

end

X=[];
for i=1:m
    X=[X A(i,i)];
end

end