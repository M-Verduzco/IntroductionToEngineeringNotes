function v = Lpoly(x,y,u)
% LPOLY  Lagrange interpolation polynomial.
%
% v = LPOLY(x,y,u) computes v(j) = P(u(j)) where P is the
% polynomial of degree d = length(x)-1 with P(x(i)) = y(i).

n = length(x);
v = zeros(size(u));
for k = 1:n
   w = ones(size(u));
   for j = [1:k-1 k+1:n]
      w = (u-x(j))./(x(k)-x(j)).*w;
   end
   v = v + w*y(k);
end