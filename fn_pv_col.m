function X = fn_pv_col( A )
% Takes a matrix as argument and returns a vector containig the index of
% the pivot columns

X=zeros(0,0);
[m,n]=size(A);
for i=1:m
  for j=1:n
   if A(i,j)~=0
       X=[X j];
       break;
   end
  end  
end

end

