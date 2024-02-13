
%Calcula los periodos anuales de
%decaimiento de la radiacion hasta
%un valor no significativo.(Ver Decairad.m)
n=0; %valor inicial
A0=7;
Atr=A0/2; %3.5
r=6;
Atn=A0; %para n=0;
vns=0.002; %valor no significativo
while Atn>=vns
 n=n+1;
 Atn=expGD32(A0,Atr,r,n);
end
n=n-1;
fprintf('El numero de anos para que la radiacion tenga')
fprintf('\n')
fprintf('un valor no significativo de %0.4f es de: %i',vns,n)
fprintf('\n')