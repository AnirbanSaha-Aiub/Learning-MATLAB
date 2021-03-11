%f=4.5;
x=[0 0 1 1 0 0 1 0 0 0 1 1 0 0 0 0 0 0 1 1 0 1 1 1];
n=length(x);
i=1;
while i<n+1
 t=(i-1)/3:0.0001:(i+2)/3;
if (x(i)== 0 && x(i+1) == 0)
psk=1*sin(2*pi*1*t-(6*pi/8));
elseif (x(i)== 0 && x(i+1) == 1)
psk=1*sin(2*pi*1*t+(6*pi/8));
elseif (x(i)== 1 && x(i+1) == 0)
psk=1*sin(2*pi*1*t-(pi/4));
elseif (x(i)== 1 && x(i+1) == 1)
psk=1*sin(2*pi*1*t+(pi/4));
end
plot(t,psk);
hold on;
grid on;
title('Phase Shift Key');
i=i+2;
end