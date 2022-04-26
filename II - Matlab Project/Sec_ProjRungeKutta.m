% Second Project Runge-Kutta 3
% where h=0.01



%-initialization----------------------------
intmin = 0;
intmax = pi;
numnodes = 5;
f=@(t,x) ((sin(t)+6)./x);
inival = 1;
h = 0.01;
t = zeros (1,numnodes);
x = zeros (1,numnodes);
X = zeros (1,numnodes);
t(1) = intmin;
x(1) = inival;
X(1) = inival;
%algorithm----------------------------------
for i = 2:numnodes
    t(i) = t(i-1)+h;
    k1 = f(t(i-1),x(i-1)); 
    k2 = f(t(i-1)+h/2,x(i-1)+(h/2)*k1);
    k3 = f(t(i-1)+h/2, x(i-1)+(h/2)*k2);
    k4 = f(t(i-1)+h, x(i-1)+h*k3);
    x(i) = x(i-1)+(1/6)*(k1+(2*k2)+(2*k3)+k4);
    X(i) = X(i-1)+h*f(t(i-1),X(i-1));
end
%-plot the numerical function---------------
figure
plot (t,x,'.-',t,X,'-*')