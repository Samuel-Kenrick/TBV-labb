%% 2a
x=1
while 1+x>1
    x=x/2;
    disp(x);
end

%% 2b
x=1
while x+x>x
    x = x/2;
    disp(x);
end

%% 2c
x=1;
while x+x>x
    x=2*x;
    disp(x);
end
%% 3

clear all

x(1)=3
x(2)=1

for i = 3:60
    x(i)=(7/3)*x(i-1)-(2/3)*x(i-2)
end

%% 4


syms f(x)
f(x) = exp(x)
delta = @(n)10^-n
d = diff(f,x)
Df = @(n) (f(1+10^-n)-f(1))/10^-n

for n = 1:20
    D(n) = Df(n)
end

err = abs(D-d(1))
loglog(err)

%% 5

t1(1)=1/sqrt(3)
t2(1)=1/sqrt(3)
for n = 2:60
    t1(n)= t1(n-1)/(sqrt(t1(n-1)^2+1)+1)
    t2(n)= (sqrt(t2(n-1)^2+1)-1)/t2(n-1)
end

for n = 1:60
    p1(n)=(2^n)*3*t1(n)
    p2(n)=(2^n)*3*t2(n)
end
err1 = abs(p1-pi)
err2 = abs(p2-pi)


plot(1:60,err1,1:60,err2)

