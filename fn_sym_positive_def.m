function [ X ] = fn_positive_def( A )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

[m,n]=size(A);

sym=1;
if m~=n
    sym=0;
else
  for i=1:m
        for j=1:n
            if A(i,j)~=A(j,i)
                sym=0;
                break;
            end
        end
  end
end

posdef=1;
if m~=n
    posdef=0;
else
    for i=1:m
      if det(A(1:i,1:i))<=0
          posdef=0;
          break;
      end
    end
end

X=[sym;posdef];

end

