%f=4.5;
x=[0 0 1 1 0 0 1 0 0 0 1 1 0 0 0 0 0 0 1 1 0 1 1 1];
n=length(x);
i=1;
while i<n+1
 t=(i-1)/3:1/5000:(i+2)/3;
if (x(i)== 0)
fsk=1*sin(2*pi*1*t);
elseif (x(i)== 1)
fsk=1*sin(2*pi*6*t);
end
plot(t,fsk);
hold on;
grid on;
title('Frequency Shift Key');
i=i+1;
end