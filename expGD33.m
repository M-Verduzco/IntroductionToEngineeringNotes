
function [Atn] =expGD33(A0,k,n)
%Esta funcion calcula el crecimiento o decrecimiento exponencial.
%A0 es el valor de A para t=0;
%k es el % por unidad de tiempo en decimal;
%n son los periodos de calculo;
%Atn es el valor de A para t=n;
Atn=A0*exp(k.*n);
end