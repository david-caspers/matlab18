function[nf] = fakultaet_w(n)
%FAKULTAET_W Fakultät mit while-Schleife
%   fakultaet_w(n) = n!
nf = n;
t = n-1;

while t > 1
    nf = nf * t;
    t = t-1;
end