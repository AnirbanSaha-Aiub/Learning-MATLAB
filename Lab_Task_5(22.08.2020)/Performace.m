f=4.5;
x=[0 0 1 1 0 0 1 0 0 0 1 1 0 0 0 0 0 0 1 1 0 1 1 1];
n=length(x); 
i=1;

while i<n+1
    t=(i-1)/3:0.0001:(i+2)/3;
    if (x(i)== 0 && x(i+1) == 0 && x(i+2) == 0)
        ask=1*sin(2*pi*f*t);
        fsk=4.5*sin(2*pi*1*t);
        psk=4.5*sin(2*pi*2*t);
    elseif (x(i)== 0 && x(i+1) == 0 && x(i+2) == 1)
        ask=1.5*sin(2*pi*f*t);
        fsk=4.5*sin(2*pi*1.5*t);
        psk=4.5*sin(2*pi*2*t+(pi/4));
    elseif (x(i)== 0 && x(i+1) == 1 && x(i+2) == 0)
        ask=2*sin(2*pi*f*t);
        fsk=4.5*sin(2*pi*2*t);
        psk=4.5*sin(2*pi*2*t+(pi/2));
    elseif (x(i)== 0 && x(i+1) == 1 && x(i+2) == 1)
        ask=2.5*sin(2*pi*f*t);
        fsk=4.5*sin(2*pi*2.5*t);
        psk=4.5*sin(2*pi*2*t+(3*pi/4));
    elseif (x(i)== 1 && x(i+1) == 0 && x(i+2) == 0)
        ask=3*sin(2*pi*f*t);
        fsk=4.5*sin(2*pi*3*t);
        psk=4.5*sin(2*pi*2*t+pi);
    elseif (x(i)== 1 && x(i+1) == 0 && x(i+2) == 1)
        ask=3.5*sin(2*pi*f*t);
        fsk=4.5*sin(2*pi*3.5*t);
        psk=4.5*sin(2*pi*2*t+(5*pi/4));
    elseif (x(i)== 1 && x(i+1) == 1 && x(i+2) == 0) 
        ask=4*sin(2*pi*f*t);
        fsk=4.5*sin(2*pi*4*t);
        psk=4.5*sin(2*pi*2*t+(3*pi/2));
    elseif (x(i)== 1 && x(i+1) == 1 && x(i+2) == 1)
        ask=4.5*sin(2*pi*f*t);
        fsk=4.5*sin(2*pi*4.5*t);
        psk=4.5*sin(2*pi*2*t+(7*pi/4));
    end
    
    subplot(3,1,1);
    plot(t,ask);
    hold on;
    grid on;
    title('Amplitude Shift Key(ASK)');

    subplot(3,1,2);
    plot(t,fsk);
    hold on;
    grid on;
    title('Frequency Shift Key(FSK)');

    subplot(3,1,3);
    plot(t,psk);
    hold on;
    grid on;
    title('Phase Shift Key(PSK)');
    i=i+3;
end

