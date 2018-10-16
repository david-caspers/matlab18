function [nf] = fakultaet_f(n)
%FAKULTAET_F Fakultät mit for-Schleife
%   fakultaet_f(n) = n!
nf = 1;
for i= 2:n
    nf = nf * i;
end

