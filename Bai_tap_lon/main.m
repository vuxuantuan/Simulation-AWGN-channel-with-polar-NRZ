bits = [1 0 1 0 0 0 1 1 0];
bitrate = 1; % bits per second

figure;
[t,s] = poplarNRz(bits, bitrate);

snr=10; %S/N
y = awgn(s,snr,'measured');

plot(t, y,t, s)
legend('Signal','Signal with AWGN')
grid on;
ber=1/2*(1-erf(1/2 * snr ^ 0.5));
