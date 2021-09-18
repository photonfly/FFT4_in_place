clc;
clear;
%% Theoretical 
In_re = [0,1,2,3];
In_im = In_re*1i;
In = In_re + In_im;
result = fft(In,4);
disp(result);

%% using butterfly
%% Using a single PE
tw = [1,-1i,1,1];
% [l1_1_o1,l1_1_o2] = butterfly_origin(In(1),In(3),tw(1));
% [l1_2_o1,l1_2_o2] = butterfly_origin(In(2),In(4),tw(2));
% [l2_1_o1,l2_1_o2] = butterfly_origin(l1_1_o1,l1_2_o1,tw(3))
% [l2_2_o1,l2_2_o2] = butterfly_origin(l1_1_o2,l1_2_o2,tw(4))
% 

%%
[o1_2,o2_2] = butterfly(real(In(1)),imag(In(1)),real(In(3)),imag(In(3)),real(tw(1)),imag(tw(1)));
[l1_1_o1,l1_1_o2] = butterfly(real(In(1)),imag(In(1)),real(In(3)),imag(In(3)),real(tw(1)),imag(tw(1)));
[l1_2_o1,l1_2_o2] = butterfly(real(In(2)),imag(In(2)),real(In(4)),imag(In(4)),real(tw(2)),imag(tw(2)));
[l2_1_o1,l2_1_o2] = butterfly(real(l1_1_o1),imag(l1_1_o1),real(l1_2_o1),imag(l1_2_o1),real(tw(3)),imag(tw(3)));
[l2_2_o1,l2_2_o2] = butterfly(real(l1_1_o2),imag(l1_1_o2),real(l1_2_o2),imag(l1_2_o2),real(tw(4)),imag(tw(4)));