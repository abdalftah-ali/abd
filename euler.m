clc
clear all 
f=@(x,y) 1+x^2;
h=0.01
x=1:h:1.03

y(1)=-4

n=length(x)

for i=2:n
    y(i)=y(i-1)+h.*f(x(i-1),y(i-1))
    disp('-------------------------')
end