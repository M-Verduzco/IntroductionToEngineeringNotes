
%Programa para probar el error ocasionado
%por un numero fraccionario en la entrada
%aun cuando se recomienda que se ingrese
%un numero entero entre el 1 y el 2
a=input('Ingrese un numero entero entre el 1 y el 2:');
a=floor(a); %supone que no lo tiene de antemano
if a>0 && a<=2
 if a==1
 fprintf('a=1 \n')
 else
 fprintf('a=2 \n') %si no es 1 es 2 porque no puede haber otro
 end
else
 fprintf('Error \n')
end