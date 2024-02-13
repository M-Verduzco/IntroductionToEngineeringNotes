%   Calcula la masa en KG de un tanque cilindrico.
radio=0.3; %30 cm
altura=1.5; %1.5 mts
rho=1000; %densidad del agua en kg/mt^3

volumen=pi*radio^2*altura;
masa=rho*volumen;

%disp('Masa en Kg')
%disp(masa)
fprintf('Masa = %3.4f Kg.\n',masa)

