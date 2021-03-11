x=[0 0 1 1 0 0 1 0 0 0 1 1 0 0 0 0 0 0 1 1 0 1 1 1];
n=length(x);
i=1;
while i<n+1
 t=(i-1)/3:1/5000:(i+2)/3;
if (x(i)== 0 && x(i+1) == 0 && x(i+2) == 0)
fsk=1*sin(2*pi*7*t);%G = 7
elseif (x(i)== 0 && x(i+1) == 0 && x(i+2) == 1)
fsk=1*sin(2*pi*9*t);%G+2 = 9
elseif (x(i)== 0 && x(i+1) == 1 && x(i+2) == 0)
fsk=1*sin(2*pi*11*t);%G+4 = 11
elseif (x(i)== 0 && x(i+1) == 1 && x(i+2) == 1)
fsk=1*sin(2*pi*13*t);%G+6 = 13
elseif (x(i)== 1 && x(i+1) == 0 && x(i+2) == 0)
fsk=1*sin(2*pi*15*t);%G+8 = 15
elseif (x(i)== 1 && x(i+1) == 0 && x(i+2) == 1)
fsk=1*sin(2*pi*17*t);%G+10 = 17
elseif (x(i)== 1 && x(i+1) == 1 && x(i+2) == 0) 
fsk=1*sin(2*pi*19*t);%G+12 = 19
elseif (x(i)== 1 && x(i+1) == 1 && x(i+2) == 1)
fsk=1*sin(2*pi*21*t);%G = 21
end
plot(t,fsk);
hold on;
grid on;
title('8-FSK');
i=i+3;
end