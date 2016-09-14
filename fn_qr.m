function [X] = fn_qr( B )
A=B;
[m,~]=size(B);
Q=fn_orthonormal(A);
R=Q'*A;
while( max(max(abs(tril(A,-1))))>0.0000001 )
A=R*Q;
Q=fn_orthonormal(A);
R=Q'*A;
end
X=[];
for i=1:m
    X=[X A(i,i)];
end
end