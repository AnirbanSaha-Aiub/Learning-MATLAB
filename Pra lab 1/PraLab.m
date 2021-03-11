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
a4 = G+H;
f1 = G+H;
f2 = F+H;
f3 = F+H;
f4 = D+H;
fs = 4001;
t = 0:1/fs:1-1/fs;
y1 = a1*sin(2*pi*f1*t) + a2*cos(2*pi*f2*t);
y2 = a2*sin(2*pi*f3*t + pi/2) + a4*cos(2*pi*f4*t - pi/3);
plot(t,y1,'LineWidth',1.0)
hold on
plot(t,y2,'LineWidth',1.0)
hold off
xlabel('Time')
ylabel('Amplitude')
title('Signals Represented in Time Domain')
legend('y1','y2')

fy1 =  fft(y1);
fy1 = fftshift(fy1)/(fs/2);
f = fs/2*linspace(-1, 1, fs);
figure;
plot(f, abs(fy1),'LineWidth',1.0);
title('Signal y1 in Frequency Doman');
axis([-15 15 0 2]);
xlabel('Frequency');
ylabel('Magnitude');

