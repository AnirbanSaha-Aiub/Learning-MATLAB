x=[0 0 1 1 0 0 1 0 0 0 1 1 0 0 0 0 0 0 1 1 0 1 1 1];
n=length(x);
i=1;
while i<n+1
 t=(i-1)/3:1/5000:(i+2)/3;
if (x(i)== 0 && x(i+1) == 0 && x(i+2) == 0)
fsk=1*sin(2*pi*7*t);
elseif (x(i)== 0 && x(i+1) == 0 && x(i+2) == 1)
fsk=1*sin(2*pi*9*t);
elseif (x(i)== 0 && x(i+1) == 1 && x(i+2) == 0)
fsk=1*sin(2*pi*11*t);
elseif (x(i)== 0 && x(i+1) == 1 && x(i+2) == 1)
fsk=1*sin(2*pi*f*t);
elseif (x(i)== 1 && x(i+1) == 0 && x(i+2) == 0)
fsk=1*sin(2*pi*15*t);
elseif (x(i)== 1 && x(i+1) == 0 && x(i+2) == 1)
fsk=1*sin(2*pi*17*t);
elseif (x(i)== 1 && x(i+1) == 1 && x(i+2) == 0) 
fsk=1*sin(2*pi*19*t);
elseif (x(i)== 1 && x(i+1) == 1 && x(i+2) == 1)
fsk=1*sin(2*pi*21*t);
end
plot(t,fsk);
hold on;
grid on;
title('Frequency Shift Key');
i=i+3;
end