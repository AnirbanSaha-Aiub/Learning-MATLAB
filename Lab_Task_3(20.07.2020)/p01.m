A1 = 76
A2 = 10
fc = 362;
fs = 40e3;
t = 0:1/fs:0.005;
x = A1*cos(2*pi*fc*t);
n = 4;
L = (2^n);
delta = (max(x)- min(x))/L;
xq = min(x) + (round((x-min(x))/delta)).*delta;
figure;
stem(t, x, 'R');
hold on;
stairs(t,xq,'b','linewidth',3.2);
hold off;
title('Quantized Signal')
xlabel('Time')
ylabel('Amplitude')
