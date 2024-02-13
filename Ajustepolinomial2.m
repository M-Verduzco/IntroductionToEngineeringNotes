%Ajuste Polinomial2
%En lugar del Basic Fitting el ajuste se hace
%automatico con la funcion: p=polyfit(x,y,n) 
%donde n es el orden de la ecuacion
%y para graficar la ecuacion
%se emplea la funcion: yplot=polyval(p,xplot)

%Primero los puntos originales x,y:
x=0:5; %0,1,2,3,4,5
y=[2 1 -1 2 3 2];
p=polyfit(x,y,3) %ajuste con una ecuacion
%de tercer orden
%p= -0.2407 2.0198 -4.1124 2.2937
%es decir:y1=-0.24*x.^3+2.02*x.^2-4.11*x+2.29
%Para graficar la ecuacion se usa:
xplot=-1:0.01:6; % xplot puede tener
%mayor extension y precision que x
yplot=polyval(p,xplot); %ojo, 
%yplot obtiene el mismo length que xplot
plot(xplot,yplot)
hold on
plot(x,y,'o') %para ver los puntos
%originales motivo del ajuste.
grid on
%si queremos las raices de la ecuacion,
% o sea donde pasa por cero, se usa
%r=roots(p) y en este
%ejemplo r= 5.6764 1.7600 0.9536
r=roots(p) %donde la curva pasa por cero
%atencion:r aparece como un vector col
%entonces para graficar las raices:
m=length(r);
for i=1:m
    plot(r(i),0,'*-k')
end
hold off
