function ref_A = fn( A )

% Summary of this function goes here
%  returns row echelon form of a matrix

[m,n]=size(A);
k=1;
rref(A)
for i=1:n
  if k<m
    % max find
    mx=abs(A(k,i));
    flag=k;
    for p=k+1:m
        if (abs(A(p,i))>mx)
            mx=abs(A(p,i));
            flag=p;
        end
    end
    
    % max swap
    A([k,flag],:)=A([flag,k],:);
    
    % if A(k,i)!=0 do lower elements zero and k+1
    % else continue
    if A(k,i)~=0
        for j=k+1:m
          A(j,:)=A(j,:)-A(j,i)/A(k,i)*A(k,:);
        end
        for q=k+1:m
            for r=1:n
                if abs(A(q,r))<0.000000001
                    A(q,r)=0;
                end
            end
        end
        k=k+1;
    end
   end
end

ref_A=A;

end