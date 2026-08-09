function [X_omega, omega_x] = dtft_func(v_n,n)
v_n = v_n(:).';
n   = n(:).';
step_size_omega = 0.01*pi;
omega_x = -pi:step_size_omega:pi;

length_omega = length(omega_x);
X_omega = zeros(1, length_omega);

for ii = 1:length_omega
    temp = v_n .* exp(-1j * omega_x(ii) * n);
    X_omega(ii) = sum(temp);
end

end