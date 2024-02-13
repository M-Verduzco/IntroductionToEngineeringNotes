function [ rads ] = grad2rads( grads )
%Esta funcion traduce grados a radianes
%De 0 a 360 grados
rads=(grads*pi)/180;
fprintf('%3.2f grados son %2.4f radianes \n',grads,rads)
end
