function rref_A = fn_rref( A )
% Summary of this function goes here
%  takes a matrix as argument and return its row reduced echelon form

[m,n]=size(A);
k=1;

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
A;
rk=0;
for p=1:m
    for t=1:n
        if A(p,t)~=0
            rk=rk+1;
            break;
        end
    end
end
rk;
for w=rk:-1:1
 for u=1:n
     if A(w,u)~=0
        A(w,:)=A(w,:)/A(w,u);
        for y=w-1:-1:1
            A(y,:)=A(y,:)-A(y,u)/A(w,u)*A(w,:);
        end
        break;
     end
 end
end

rref_A=A;

end
