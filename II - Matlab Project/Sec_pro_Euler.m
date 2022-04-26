% Second Project Euler's Method
% where h = 0.01 
h = 0.01;  
t = 0:h:pi;
fun=@(t,x)(sin(t)+6)/x;
x = zeros(size(t));
x(1) = 1;
n = 10;
for i=1:n-1
    f = (sin(t(i))+6)/x(i);
    x(i+1) = x(i) + h * f;
end
 %-plot the numerical solution
 plot(t,x);
 axis tight
 
