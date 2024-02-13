
%Segundo Programa para probar el
%Basic Fitting Tool de Matlab
%Este es un procedimiento semi-manual
x=[0:9];
y=[30 50 75 85 90 94 96 90 80 68];
plot(x,y,'o')
axis([0 11 20 100])
grid on
%Decidir el mejor ajuste polinomial
%y obtener los coeficientes por
%Basic Fitting Tool. En este caso:
%4o orden : y=p1x^4+p2x^3+p3x^2+p4x+p5
%SAVE ON WORKSPACE fit,normresid,resids
%No borrar el workspace. (Correr de nuevo)
%%Puede calcularse tambi?n nor
nor=(sum(resids.^2))^(1/2) %Importante
%R2 (R-square) es una medida estadistica
%del ajuste y va de 0 a 1 (de mal a muy bueno)
%Se calcula primero la Varianza de (y) var. dep.
SSy=(length(y)-1)*var(y); %Importante
R2=1-normresid^2/SSy %Importante
%Obtener los coeficientes de cuarto
%orden por Basic Fitting
%La ecuacion con sus coeficientes es:
%p1x^4+p2x^3+p3x^2+p4x+p5
%Obtener de fit los coeficientes
p1 = -0.0067016
p2 = 0.17152
p3 = -3.6215
p4 = 27.8949
p5 = 29.028
%Proyeccion
xplot=[0:11]; %si la xplot va hasta un valor
% mayor que x se esta extrapolando;
% se trata de una proyeccion.
yplot=p1*xplot.^4+p2*xplot.^3+p3*xplot.^2+p4*xplot+p5;
figure
plot(xplot,yplot,'r')
axis([0 11 20 100])
grid on
hold on
plot(x,y,'o') %para ver los puntos originales