
function [y] = ec4ord(x)
%Se trata de una ecuacion de cuarto orden
%Esta function permite calcular (y) para
%valores de (x) o graficar y(x) utilizando
%un vector (x) dentro de ciertos limites.
y=(0.9*x.^4)-(12*x.^2)-5*x;
end