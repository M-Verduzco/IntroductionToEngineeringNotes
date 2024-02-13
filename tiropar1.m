function [hmax,dmax] = tiropar1(v0,theta)
%Calcula la altura maxima y la distancia
%maxima de un tiro parabolico a partir de
%su velocidad inicial v0 y de su angulo theta
%en grados.
g=9.81;
v0x=v0*cos(theta*pi/180);
v0y=v0*sin(theta*pi/180);
thmax=v0y/g;
hmax=v0y^2/(2*g);
ttot=2*thmax;
dmax=v0x*ttot;
end