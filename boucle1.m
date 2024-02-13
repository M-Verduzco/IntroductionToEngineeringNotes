
%Programa demo for-end
%Calcula la suma de los n primeros terminos de
%una serie sigma desde k=1 hasta n de (k*(-1)^k)/(2^k)
clc;clear
n=input('numero maximo de terminos:');
s=0;
for k=1:n
 s=s+((k*((-1)^k))/(2^k));
end
fprintf('La suma de los primeros %i terminos es %2.4f',n,s)
fprintf('\n')