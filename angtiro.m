
function [theta] = angtiro(dmax,v0)
%Calcula el angulo en grados de un tiro parabolico
%Requiere la distancia maxima dmax y la velocidad
%inicial v0
g=9.81;
A=(dmax*g)/v0^2;
Dosth=asind(A);
theta=Dosth/2;
end