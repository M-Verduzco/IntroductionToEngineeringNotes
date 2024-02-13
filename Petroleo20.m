%El file excel Ptr2.xlsx contiene los precios por mes
%del petroleo en los ultimos 30 meses a partir
%del mes 0  de referencia.
%Se trata de ajustar la tendencia observada a
%una ecuacion de cuarto grado y proyectarla
%5 meses mas para obtener el precio probable
%para el ultimo mes.(mes 35)
%Usa la lectura del file excel y
%las funciones polyfit y polyval.

preciomes=xlsread('Ptr2.xlsx','E2:E32');
x=[0:length(preciomes)-1]; %vector fila
plot(x,preciomes,'b')  %grafica original
hold on
p=polyfit(x',preciomes,4); %la variable 
          %preciomes es un vector columna
y=polyval(p,x);
plot(x,y,'--k') %ajuste de 4o orden 
%Proyeccion 
%La proyeccion sera de 5 meses
%(del mes 30 al 35)
xplot=[0:(length(preciomes)-1)+5];
yplot=polyval(p,xplot);
figure %grafica de proyeccion 
plot(xplot,yplot,'r')
axis([0 40 0 50])
grid on 
hold on
plot(x,preciomes,'b')
%Precio del ultimo mes proyectado (mes 35)
preciofinal=yplot(length(yplot))


