clear all
clc
f=@(x) 2*sin(x)-(x^2)/10;
a=0;                            
b=4;                           
epsilon=0.000001;               
tau=double((sqrt(5)-1)/2);     
k=0;   
d=tau*(b-a);
x1=a+d;           
x2=b-d;
f_x1=f(x1);                   
f_x2=f(x2);

while ((abs(b-a)>epsilon) && (k<10))
    clc
   fprintf('\n %0.4f \t %0.4f \t %0.4f \t %0.4f  \t %0.4f \t %0.4f \t %0.4f  \t %0.4f \t %0.4f ',a,f(a),x2,f(x2),x1,f(x1),b,f(b),d);

    if(f_x1<f_x2)
         b=x1;
         x1=x2;   
         d=tau*(b-a);
        x2=b-d;        
        f_x1=f(x1);
        f_x2=f(x2);
        
    else
        a=x2;
        x2=x1;
        d=tau*(b-a);
        x1=a+d;
        f_x1=f(x1);
        f_x2=f(x2);
        
    end
  k=k+1; 
  pause
end
