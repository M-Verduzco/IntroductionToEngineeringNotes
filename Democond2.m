
%Demo de condicional if-else-end
c=input('Introduzca la calificacion entre 0 y 10:');
if c<=10 || c<0
 if c<6
 fprintf('Reprobado')
 fprintf('\n')
 else
 fprintf('Aprobado')
 fprintf('\n')
 end
else
    fprintf('El numero ingresado es invalido')
    fprintf('\n')
end 
 fprintf('La escuela le agradece su cooperacion.')
 fprintf('\n')
 %El problema es que si por error se introduce 12 da "aprobado"
 %Falta otra condicional para evitarlo.