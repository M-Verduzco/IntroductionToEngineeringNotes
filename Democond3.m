
%Demo de condicional if-else-end
%Doble loop
c=input('Introduzca la calificacion de 0 a 10:');
if c<=10
 if c<6
 fprintf('Reprobado')
 fprintf('\n')
 else
 fprintf('Aprobado')
 fprintf('\n')
 end
 fprintf('La escuela le agradece su cooperacion.')
 fprintf('\n')
else
 fprintf('Error,la calificacion es mayor de 10 \n')
 fprintf('Vuelva a intentar')
end
fprintf('\n')