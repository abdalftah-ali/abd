%neweton Method
clc
clear
x0=2.5;
fx=@(x) 2*cos(x)-x/5;
dfx=@(x)-2*sin(x)-1/5; 
    fprintf('\n  i \t\t\tx0 \t\t f(x0)\t\t dfx(x0) \tx1\t\t\t err ');
    m=0;

for i=0:10
    x1=x0-(fx(x0)/dfx(x0));
       fprintf('\n %0.5f \t%0.5f \t%0.5f  \t%0.5f \t%0.5f \t%0.5f ',i,x0,fx(x0),dfx(x0),x1,m);
        m=abs((x0-x1)/x1)*100;

      

    x0=x1;
    i;
    
end

