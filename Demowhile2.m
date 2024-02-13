
%Demo loop while-end ver2
%f(x)=e^x en serie es igual a
%sigma de n=0 hasta infinito de x^n/n factorial.
%El valor mas pequeno aceptable del enesimo termino
%de la serie es 0.0001 pero el numero de pasos tampoco
%debe exceder de 30 por precaucion (loop infinito)
x=input('Introduzca el valor de x:');
n=1;
an=1;
S=an; %debe haber valores iniciales antes del while
while abs(an)>=0.0001 && n<=30
 an=x^n/factorial(n);
 S=S+an;
 n=n+1;
end
if n>=30
 disp('Se requieren mas de 30 terminos')
else
 fprintf('e elevado a %i es igual a %4.3f',x,S)
 fprintf('\n')
 fprintf('El numero de terminos utilizados fue de %i',n)
 fprintf('\n')
end