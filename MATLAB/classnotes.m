Fs = 1000;
T = 1/Fs;
nyquist = Fs/2;
L = 3000;
t = (0:L-1) * T;
c = rand(3,1)*nyquist;
data = 4*cos(2*pi*c(1)*t) - 6*sin(2*pi*c(2)*t) + 2*cos(2*pi*c(2)*t) - 7*sin(2*pi*c(3)*t);
plot(t,data)

spec = fft(data);
plot(real(spec));
%hold on
plot(imag(spec),'r--');

power = abs(spec).^2;
plot(power);
freq = (0:L/2 + 1) * Fs/2;
plot(freq,power(1:L/2 + 2));
NEFT




