n=[1:1:10];
p=((0.14*n.^3)-(2*n.^2)+(7.5*n)+3.2);
A=150*p
plot(n,p, '-o')
grid on
xlabel('Meses del 1 al 10')
ylabel('Precio del mango')


