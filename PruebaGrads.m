%Programa Script de prueba conversion grad a rads
for G=1:1:360
 rads=grads2rads(G); %llamado a la funcion
 x(G)=G; %genera un vector para graficado
 y(G)=rads; %el otro vector para graficado
end
plot(x,y,'')
grid on
xlabel('GRADOS')
ylabel('RADIANES')

    