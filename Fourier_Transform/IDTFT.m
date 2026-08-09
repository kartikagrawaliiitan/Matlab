% DTFT and IDTFT of any basic signals 
n = -100:1:100;
length_n=length(n);
v_n = zeros(1,length_n);
type_of_sqn = 6;
a=0.8;
M=1;
N=50;
A=1;
[v_n,signal_title] = sqn_gen_fun(type_of_sqn, n, length_n, M, N, A ,a);
subplot(4,1,1)
plot(n,v_n)
xlabel('n');
ylabel('x(n)')
grid on;
title(signal_title);
[X_omega, omega_x] = dtft_func(v_n,n);
subplot(4,1,2)
plot(omega_x, abs(X_omega));
xlabel('\omega');
ylabel('|X(\omega)|');
grid on
title('Magnitude of DTFT of signal')
subplot(4,1,3)
plot(omega_x, angle(X_omega));
xlabel('\omega');
ylabel('\angleX(\omega)');
grid on;
title('Phase of DTFT of signal')
x_rec = zeros(size(n));
for kk = 1:length_n
    x_rec(kk) = (1/(2*pi)) * sum(X_omega .* exp(1j * omega * n(kk))) * (omega(2)-omega(1));
end
subplot(4,1,4)
plot(n, real(x_rec)); title('IDTFT Reconstructed');
xlabel('n');
ylabel('x(n)')
grid on;