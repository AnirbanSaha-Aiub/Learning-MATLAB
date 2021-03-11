x=[0 0 1 1 0 0 1 0 0 0 1 1 0 0 0 0 0 0 1 1 0 1 1 1];
n=length(x);
i=1;
while i<n+1
 t=(i-1)/3:1/5000:(i+2)/3;
if (x(i)== 0 && x(i+1) == 0)
ask=1*sin(2*pi*1*t);%H=1
elseif (x(i)== 0 && x(i+1) == 1)
ask=2*sin(2*pi*1*t);%H=1
elseif (x(i)== 1 && x(i+1) == 0)
ask=3*sin(2*pi*1*t);%H=1
elseif (x(i)== 1 && x(i+1) == 1)
ask=4*sin(2*pi*1*t);%H=1
end
plot(t,ask);
hold on;
grid on;
title('Quadrature Amplitude Shift Key (QASK)');
i=i+2;
end