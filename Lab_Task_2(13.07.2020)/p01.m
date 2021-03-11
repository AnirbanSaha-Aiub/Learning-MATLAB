A1 = 76;
A2 = 17;
fs = 100;
t = 0:1/fs:1-1/fs;
x1 = A1*cos(2*pi*3*t);
x2 = A2*cos(2*pi*7*t);
x3 = x1 + x2;
plot(t, x3)
xlabel('Time')
ylabel('Amplitude')
title('x3 = x1 + x2');
bandwidth = obw(x3,fs);
fx1 = fft(x1);
fx2 = fft(x2);
fx3 = fft(x3);
fx1 = fftshift(fx1)/(fs/2);
fx2 = fftshift(fx2)/(fs/2);
fx3 = fftshift(fx3)/(fs/2);
f = fs/2*linspace(-1,1,fs);
figure;
plot(f,abs(fx1),f,abs(fx2),f,abs(fx3),'LineWidth',1.5);
title('Mangnitude FFT of sine');
axis([-100 100 0 2]);
xlabel('Frequency(Hz)');
ylabel('Magnitude');
f = 3;
sig = 2*sin(2*pi*3*t);
partition = [-2.5, -1.5, -0.5, 0.5, 1.5, 2.5];
codebook = [-3:3];
[index, quants] = quantiz(sig,partition,codebook);
figure;
plot(t, sig, 'x', t, quants,'.')
xlabel('Time')
ylabel('Amplitude');
title('Original and Quantized Signal');
lagend('Original Signal', 'Quantized Signal')
