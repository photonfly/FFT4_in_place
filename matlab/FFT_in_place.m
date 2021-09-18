clc;
clear;
%% Theoretical 
In_re = [0,1,2,3];
In_im = In_re*1i;
In = In_re + In_im;
result = fft(In,4);
disp(result);
In_im = In_re;

%% Using a single PE
% 6cc in total
buffer = zeros(3,2);
tw = [1,0;0 -1;1,0;1,0];
cc = 0;
% In the 1st cc
cc = cc + 1;
% one data buffered 
buffer(1,:) = [In_re(1),In_im(1)]; 
% In the second cc
cc = cc + 1;
buffer(2,:) = [In_re(2),In_im(2)]; 
% In the 3rd cc
cc = cc + 1;
tw_re = tw(1,1);
tw_im = tw(1,2);
layer_1_1 = butterfly(buffer(1,1),buffer(1,2),In_re(3),In_im(3),tw_re,tw_im);
% In the 4th cc
cc = cc + 1;
tw_re = tw(2,1);
tw_im = tw(2,2);
layer_1_2 = butterfly(buffer(2,1),buffer(2,2),In_re(4),In_im(4),tw_re,tw_im);
% In the 5th cc
cc = cc + 1;
tw_re = tw(3,1);
tw_im = tw(3,2);
layer_2_1 = butterfly(layer_1_1(1,1),layer_1_1(1,2),layer_1_2(1,1),layer_1_2(1,2),tw_re,tw_im);
% In the 6th cc
cc = cc + 1;
tw_re = tw(4,1);
tw_im = tw(4,2);
layer_2_2 = butterfly(layer_1_1(2,1),layer_1_1(2,2),layer_1_2(2,1),layer_1_2(2,2),tw_re,tw_im);
