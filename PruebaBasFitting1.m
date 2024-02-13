
%Programa para probar Basic Fitting Tool de Matlab
%Este es un procedimiento semi-manual
x=[0 1 2 3 4 5];
y=[0 20 60 68 77 108];
plot(x,y,'o')
axis([0 6 0 200])
grid on
%Decidir el mejor ajuste polinomial
%y obtener los coeficientes por
%Basic Fitting Tool. En este caso:
%cubic : y=p1x^3+p2x^2+p3x+p4
%Save on Workspace:
%fit(struct coeficientes),normresid (escalar RMSE)
%resids (vector con n residuos)
%NO BORRAR EL WORKSPACE (correr de nuevo)
%Puede calcularse tambi?n nor
nor=(sum(resids.^2))^(1/2) %Importante
%R2 (R-square) es una medida estadistica
%del ajuste y va de 0 a 1 (de mal a muy bueno)
%Se calcula primero la Varianza de (y) var. dep.
SSy=(length(y)-1)*var(y); %Importante
R2=1-normresid^2/SSy %Importante

%Si el ajuste es conveniente (bajo nor y R2 hacia 1)
%Los Coeficientes se obtienen de fit
p1 = 1.0093;
p2 = -8.8016;
p3 = 40.53;
p4 = -2.9921;
xplot=[0:7]; %significa extrapolar (proyeccion)
yplot=p1*xplot.^3+p2*xplot.^2+p3*xplot+p4;
figure
plot(xplot,yplot,'r')
axis([0 7 0 200])
grid on
hold on
plot(x,y,'o') %para ver los puntos originales