%Programa de simulacion Diffie-Hellman (Usuario B)
clc;clear
q=2; %base
p=29; %modulo p
b=input('Ingrese codigo secreto:'); %solo entre 1 y 21
B=q^b-(p*floor((q^b)/p)); %publico
A=input('Ingrese A:');
Kb=A^b-(p*floor((A^b)/p)); %numero interno
fprintf('El valor de B es:%i\n',B)

msjencr=input('Escriba el mensaje encriptado: ','s');%solo minusculas
%sin espacios
msjnum=uint8(msjencr);
L=length(msjnum);
for i=1:L
    valnum=msjnum(i);
    if (valnum-6-Kb)<=90
        res=(valnum-6-Kb);
    else
        res=(valnum-32-Kb);
    end
    resch(i)=char(res);
end
fprintf('El mensaje original es: %s \n',resch)
%resch  %Mensaje original
