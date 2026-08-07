% different signals
clc
clear all
close all
max_range_n=100;
n=-max_range_n:1:max_range_n;
length_n = length(n);
type_of_sqn = 9;
a=0.8;
M=1;
N=50;
A=1;
[v_n,signal_title] = sqn_gen_fun(type_of_sqn, n, length_n, M, N, A ,a);
stem(n,v_n)
grid on;
xlabel("\itn","Fontsize",12)
ylabel("{\itv}({\itn})","Fontsize",12)
title(signal_title);

% [v_n] = gen_func(type_of_sqn,n,length_n,a);