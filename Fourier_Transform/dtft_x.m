function [X_omega] = dtft_x(x_n, length_omega, omega_x, n)
for ii=1:length_omega
    temp=x_n.*exp(-1j*omega_x(ii)*n);
    X_omega(1,ii)=sum(temp);
end
end