%Programa de graficado de tres funciones
%Se trata de la primera y la segunda derivada de una funcion
%La funcion es y=3x^2-26x-6

x=[-2:0.01:4]; %Limites de las funciones para el graficado
y= 3*x.^3-26*x+6; %Funcion original
yd = 9*x.^2-26; %Primera derivada
ydd = 18*x; %Segunda derivada
plot (x,y,'b') %Grafica original con la b en blue.
grid on
hold on % sobrepone gráficas
plot (x, yd, '--r') %Grafica la primera derivada en --r ( red rayas)
plot (x, ydd, ':k') %Grafica la segunda derivada en :k (punteado black)
xlabel ('Valor de x')
ylabel('Valor de y')
hold off
