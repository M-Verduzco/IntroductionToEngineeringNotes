%Ejercicio 1
%numero de smartphones en mexico
tf=9;
n=[0:1:tf];
A0=4;
Atr=31.4;
r=6;
A = expGD32(A0, Atr, r, n);
nN=n+2010;
plot(nN,A)
grid on
title('AUMENTO DE SMARTPHONES EN MEXICO')
xlabel('AÑO')
ylabel('PERSONAS USUARIAS DE S.P. EN MILLONES')
fprintf('El número de personas con smarphones despues de %i años será: %0.4f', tf,A(tf+1))
fprintf('\n')