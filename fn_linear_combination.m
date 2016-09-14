function X = fn_linear_combination( A,v )
% Takes 2 arguments:
% 1. matrix with all given vectors column wise and
% 2. vector v which is to be written as linear combination column wise
% returns a vector with coeff of each vector in the linear combination

AUG=[A v];

[m,n]=size(A);

if fn_rank(A)~=fn_rank(AUG)
    disp('cannot be written');
elseif fn_rank(A)<n
    disp('infinite ways');
else disp('can be written in unique way');

rref_AUG = fn_rref(AUG);

% find solution
for i=m:-1:1
 X(i)=rref_AUG(i,n+1);
end

end
