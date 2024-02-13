
%Simula un calculador de cambio de divisas
%Usa la funcion switch-case
%Se ingresa la moneda extranjera y el monto
%escribe el valor en pesos de la conversion.
monedaex=input('Escriba la moneda a calcular: ','s');
switch monedaex
 case 'dolar'
 monto=input('Ingrese el monto a calcular:');
 vp=(21.36*monto);
 fprintf('El monto en pesos es: %5.2f',vp)
 disp(' ')
 case 'euro'
 monto=input('Ingrese el monto a calcular:');
 vp=(24.72*monto);
 fprintf('El monto en pesos es: %5.2f',vp)
 disp(' ')
 case 'libra'
 monto=input('Ingrese el monto a calcular:');
 vp=(27.28*monto);
 fprintf('El monto en pesos es: %5.2f',vp)
 disp(' ')
 otherwise
 fprintf('No hay informacion de esa moneda')
 disp(' ')
end