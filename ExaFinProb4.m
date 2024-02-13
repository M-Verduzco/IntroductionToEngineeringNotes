

for k=1:30
   if k==1
       fibo(k) = 1;
   end
   if k==2
       fibo(k) = 1;
   end
   if(k>2)
       fibo(k) = fibo(k-1)+fibo(k-2);
   end
end
v=0;
for i=1:12;
 v = v + atan(1/fibo(2*i+1));
end 
res = 4*v
