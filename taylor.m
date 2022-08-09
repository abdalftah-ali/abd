clear all
clc
dydx=@(x,y) 1+x^2;
dy2dx2=@(x,y) 2*x;
h=0.01
x=1:h:1.03

y(1)=-4
%x(1)
n=length(x)
for i=2:n
    y(i)=y(i-1)+h.*dydx(x(i-1),y(i-1))+(h^2/2).*dy2dx2(x(i-1),y(i-1))
    disp('-------------------------')
end