f=1;
x=[0 0 1 1 0 0 1 0 0 0 1 1 0 0 0 0 0 0 1 1 0 1 1 1];
n=length(x);
i=1;
while i<n+1
 t=(i-1)/3:1/5000:(i+2)/3;
if (x(i)== 0 && x(i+1) == 0 && x(i+2) == 0)
ask=7*sin(2*pi*f*t);
elseif (x(i)== 0 && x(i+1) == 0 && x(i+2) == 1)
ask=9*sin(2*pi*f*t);
elseif (x(i)== 0 && x(i+1) == 1 && x(i+2) == 0)
ask=11*sin(2*pi*f*t);
elseif (x(i)== 0 && x(i+1) == 1 && x(i+2) == 1)
ask=13*sin(2*pi*f*t);
elseif (x(i)== 1 && x(i+1) == 0 && x(i+2) == 0)
ask=15*sin(2*pi*f*t);
elseif (x(i)== 1 && x(i+1) == 0 && x(i+2) == 1)
ask=17*sin(2*pi*f*t);
elseif (x(i)== 1 && x(i+1) == 1 && x(i+2) == 0) 
ask=19*sin(2*pi*f*t);
elseif (x(i)== 1 && x(i+1) == 1 && x(i+2) == 1)
ask=21*sin(2*pi*f*t);
end
plot(t,ask);
hold on;
grid on;
title('Amplitude Shift Key');
i=i+3;
end