function out = mat_norm( A,p )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

[m,n]=size(A);
high=0;

if p==1
    for i=1:n
    temp=0;
    for j=1:m
        temp=temp+abs(A(j,i));
    end
    if temp>high
        high=temp;
    end
    end

elseif p==inf
for i=1:m
    temp=0;
    for j=1:n
        temp=temp+abs(A(i,j));
    end
    if temp>high
        high=temp;
    end
end

else
    for i=1:m
        for j=1:n
            high=high+A(i,j)^p;
        end
    end
    high=high^(1/p);
end

out=high;

end