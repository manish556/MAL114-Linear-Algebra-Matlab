function proj_u_on_v = fn_projection( u,v )
% Takes 2 vectors as arguments and returns projection of u on v

proj_u_on_v = dot(u,v)/dot(v,v)*v;

end