fs = 4001;
t = 0:1/fs:0.001;
a1 = 7;
a2 = 3;
a3 = 1;
f1 = 8;
f2 = 1;
f3 = 3;
s = (1/4+1);
n = 2;
y = a1*sin(2*pi*f1*t)+a2*cos(2*pi*f2*t-60)-a3*sin(2*pi*f3*t);
noise_signal = s*randn(size(t));
L = (2^n)-1;
delta = (max(y)-min(y))/L;
yq = min(y)+(round((y-min(y))/delta)).*delta;
subplot(2,1,1);
stem(t,y,'b','LineWidth',1.0);
xlabel('Time(s)')
ylabel('Y(n)')
title('Original Signal')
subplot(2,1,2);
stairs(t,yq,'b','LineWidth',1.0)
title('Quantized Signal')
xlabel('Time')
ylabel('Amplitude')