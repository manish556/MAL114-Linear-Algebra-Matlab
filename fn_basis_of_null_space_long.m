function B = fn_basis_of_null_space_long( M )
% takes a matrix as argument and returns null basis of null space in matrix
% form (columnwise)

[m,n]=size(M);
A=fn_rref(M);
rk=fn_rank(M);

P=zeros(m,n-rk);    % will contain null space bases
[~,b]=size(P);
pv=zeros(n,1);       % pv will have that index 1 which index is pivot column of rref of A else 0
npv=zeros(n,1);      % npv contains column numbers of non pivot columns

% assigning values to pv
for i=1:m
    for j=1:n
        if(A(i,j)~=0)
            pv(j)=1;
            break;
        end
    end
end

% assigning values to npv
r=0;
for i=1:n
    if pv(i)==0
        r=r+1;
        npv(r)=i;
    end
end


% produce P
for i=1:b
    for j=1:r
       if j==i
           P(npv(j),i)=1;
       else P(npv(j),i)=0;
       end
    end
  z=1;
  for k=1:m
      if pv(k)==1
          P(k,i)=-A(z,npv(i));
          z=z+1;
      end
  end
    
end

B=P;

end