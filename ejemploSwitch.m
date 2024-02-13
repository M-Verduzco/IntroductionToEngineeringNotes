
%Programa de prueba de la sentencia switch-case
clear,clc
estado='off'; %tiene que estar definido el estado inicial
for n=1:10
 switch estado
 case 'off'
 fprintf('Para n igual a %i esta en off',n)
 disp(' ')
 if n==3
 estado='on';
 end
 case 'on'
 fprintf('Para n igual a %i esta en on',n)
 disp(' ')
 if n==6
 estado='inter';
 end
 case 'inter'
 fprintf('Para n igual a %i esta en inter',n)
 disp(' ')
 if n==8
 estado='off';
 end
 end
 pause(3)
end