%Programa para extraer datos de un file en Excel
% el file excel se llama stockdata.xlsx
% y tiene cuatro columnas Dates(995x1) Msft(995x1)
% Csco (995x1) y Lu(995x1)

data=xlsread('stockdata.xlsx','A3:D997');
Y=data(:,2); %la columna Msft es la segunda del file
             %por lo tanto solo se toman en cuenta los 
             %995 numeros de Msft
X=1:995;
plot(X,Y)  %De aqui operar Basic Fitting