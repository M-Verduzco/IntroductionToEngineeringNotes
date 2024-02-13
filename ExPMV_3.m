t =1:0.5:6;  %en minutos
TC=10+560*log(t);  %Rango de temperaturas
C=TC;
F=((9/5)*C)+32 %De centigrados a Farenhait

plot(t,F)
title('calentamiento de un horno')
xlabel('tiempo')
ylabel('temperaatura en F°')
grid on 
