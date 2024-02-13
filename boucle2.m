    
%Grafica la serie del
%programa boucle1.m para k=1 hasta n=25
clc;clear
n=25;
s=0;
for k=1:n
s=s+(k*((-1)^k))/(2^k); %la suma se guarda en un escalar
%s=s+() no sirve para graficar
end
fprintf('La suma de los primeros %i terminos es: %2.4f',n,s)
fprintf('\n')
%Graficas
for k=1:n
 s1(k)=(k*((-1)^k))/(2^k); %para graficar se crean dos
%vectores s1(k) y k1(k)
 k1(k)=k;
end
plot(k1,s1,'b') %se grafican solo los valores para cada k
grid on
hold on
k2(1)=1; %Para crear un procedimiento general
s2(1)=(1*((-1)^1))/(2^1);%para la suma, recordar que el indice
%de un elemento de un vector no puede ser igual a 0.
for k=2:n %Para evitar que s2(k-1) sea s2(0) que daria error
 s2(k)=s2(k-1)+(k*((-1)^k))/(2^k); %se calcula por separado
 k2(k)=k; %y el bucle comienza por k=2:n
end
plot(k2,s2,'r')
xlabel('k')
text(15,0.05,'Valor para cada k')
text(15,-0.15,'Suma S')