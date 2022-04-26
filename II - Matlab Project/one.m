% Second Project using Euler's Method
% x' = (sin(t)+6)/x
% x(0) = 1
% h = 0.1
t0 = 0;
x0 = 1;
tEnd = pi;
h = 0.1;
N = (tEnd-t0)/h;

% Initializing Solution
T = t0:h:tEnd;
X = zeros(size(N));
x(1) = x0;

% Solving using Euler's method
for i=1:N
    fi = (sin(t(i))+6)./x(i)
    X(i+1) = X(i) + h*fi;
end
plot(T,X);