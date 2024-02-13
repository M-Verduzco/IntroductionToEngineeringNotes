%Calcula el decaimiento de la radiacion
%La teoria dice que el valor de la radioactividad
%decae a la mitad en 5.8 anos.
%Si hoy 2020 vale 7 unidades,
%cuanto valdra en el ano 2050 (dentro de 30 años)
%Emplea la funcion expGD32
tf=30;
n=[0:1:tf];
r=expGD32(7,3.5,5.8,n);
nN=n+2020;
plot(nN,r)
grid on
axis([2020 2050 0 7])
title('Decaimiento de la radioactividad')
fprintf('La radioactividad despues de %i años sera:%0.4f',tf,r(tf+1))
fprintf('\n')