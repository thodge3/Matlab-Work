
fs = timeseconds(2,1);
T = 1/fs;
L = size(timeseconds);
t = (0:L-1)*T;    
L = 400001;

NFFT = 2^nextpow2(L);
f = (T / 2) * linspace(0,1,NFFT/2+1);
Y = (fft(EMF,NFFT)/L)/2;


figure(1)
set(gca,'FontSize',16)
plot(f,2*abs(Y(1:NFFT/2+1))) ;
grid
title('NMR Spectroscopy', 'FontSize', 24, 'interpreter', 'latex');
xlabel('Frequency (Hz)', 'interpreter','latex','FontSize', 24)
ylabel('Signal Strength', 'interpreter','latex','FontSize', 24)

figure(2)
set(gca,'FontSize',16)
plot(timeseconds,EMF) ;
grid
title('Original Signal Data', 'FontSize', 24, 'interpreter', 'latex');
xlabel('Time (s)', 'interpreter','latex','FontSize', 24)
ylabel('EMF (mV)', 'interpreter','latex','FontSize', 24)
