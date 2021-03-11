A = 1;
B = 8;
C = 3;
D = 6;
E = 2;
F = 0;
G = 7;
H = 1;
a1 = D+H;
a2 = E+H;
a3 = F+H;
f1 = G+H;
f2 = F+H;
f3 = E+H;
s = (H/4 + 1);
n = H + 1;
y = a1*sin(2*pi*f1*t) + a2*cos(2*pi*f2*t-60) - a3*sin(2*pi*f3*t);
noise_signal = s*randn(size(t));
L = (2^n) - 1;
delta = (max(y) - min(y))/L;
yq = min(y) + (round((y-min(y))/delta)).*delta;
subplot(2, 1, 1);
stem(t, y, 'b', 'LineWidth', 1.0);
xlabel('Time')
ylabel('Y[n]')
title('Original Signal')
subplot(2, 1, 2);
stairs(t, yq, 'b', 'LineWidth', 1.0);
title('Quantized Signal')
xlabel('Time')
ylabel('Amplitude')
