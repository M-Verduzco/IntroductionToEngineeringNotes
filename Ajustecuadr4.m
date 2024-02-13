%Programa de ajuste polinomial  
%Utiliza como datos la variable Msft del Excel:
%Stockdata.xlsx Por via del Basic Fitting se sabe
%que la ecuacion de 4o orden es un buen ajuste. 
%El programa grafica el "plot of residuals" y
%calcula la "norm of residuals" o RMSE

Msft=xlsread('stockdata.xlsx','B3:B997');
x=[1:length(Msft)]; %vector fila 1x995
p=polyfit(x',Msft,4); %ojo:Msft esta en columna (995x1)
                           % x' es columna  
y4o=polyval(p,x);
plot(x,Msft,'b') %grafica la curva original  
hold on
plot(x,y4o,'r') %grafica la curva ajustada en rojo
%graficado de los residuos con relacion a la original 
for n=1:995
    res(n)=Msft(n)-y4o(n);   %residuo o diferencia
    y0(n)=0; %requiere el mismo numero de puntos
end
plot(x,y0,'r') %plotea la raya roja de cero relativo
hold on
plot(x,res,'b') %plotea los residuos 
%calcula la norma de residuos RMSE
nor=(sum(res.^2))^(1/2)

%Verificar con Basic Fitting que la norma es 237.4296

%agregado para quitar. Sombrea los residuos 
for i=1:995
    line([i i],[0 res(i)])
end