%Demo loop while-end
x=1; %Atencion: no puede ser 0 (loop infinito)
while x<=15
 fprintf('El valor de x es ahora %i\n',x)
 x=2*x;
end
fprintf('El ultimo valor de x es %i\n',x)
%Notese que el programa aproxima a la potencia de 2
%mas cercana hacia arriba a partir del valor de x
%en la condicional, incluida la potencia exacta.
%(efecto del = en la condicional)