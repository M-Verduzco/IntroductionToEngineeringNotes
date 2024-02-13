
%Programa de prueba de la condicional if-else-end
%Con proteccion de decimales en entrada
%Emplea la function ec4ord(x)
%Si p=1 grafica ec4ord de -4 a 4
%Si p=2 grafica ec4ord de 0 a 4
p=input('Ingrese un numero entero entre 1 y 2:');
p=floor(p); %proteccion contra numeros con decimales
if p>0 && p<=2
 if p==1
 x=linspace(-4,4,81);
 else
 x=linspace(0,4,81);
 end
 y=ec4ord(x);
 plot(x,y)
 grid on
else
 fprintf('Error:tiene que ser 1 o 2 solamente \n')
end