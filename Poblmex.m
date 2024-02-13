%Calcula poblacion de Mexico para el 2020
%Emplea la funcion expGD32
%Referencias de los Censos de Poblacion:
%En 1980 habia 67M ; En 1990 habia 79M ;
%Usa la funcion expGD32
n=[0:40]; % 40 periodos anuales (de 1980 a 2020)
[pb,k]=expGD32(67,79,10,n); %solo se requiere Atr
nN=n+1980; %normalizado desde 1980
%plot(n,pb,'*')
plot(nN,pb,'*') %normalizado
grid on
ylabel('Millones de Habitantes')
xlabel('Año')
title('Poblacion de Mexico')
%Puede explicitarse el valor proyectado al 2020
%pb es un vector de la misma longitud que n
Pob2020=pb(40+1);
kp=k*100;
fprintf('La poblacion estimada al 2020 es de: %3.2f Millones.\n',Pob2020)
fprintf('El aumento poblacional en México es de: %2.2f por ciento cada año.\n',kp)