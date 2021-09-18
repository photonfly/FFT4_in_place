In_re = [0,1,2,3];
In_im = In_re*1i;
In = In_re + In_im;
tw = [1,-1i,1,1];
%% 
[o1_1,o2_1] = butterfly_origin(In(1),In(3),tw(1));
[o1_2,o2_2] = butterfly(real(In(1)),imag(In(1)),real(In(3)),imag(In(3)),real(tw(1)),imag(tw(1)));
isequal(o1_1,o1_2)
isequal(o2_1,o2_2)

[o1_1,o2_1] = butterfly_origin(In(2),In(4),tw(2));
[o1_2,o2_2] = butterfly(real(In(2)),imag(In(2)),real(In(4)),imag(In(4)),real(tw(2)),imag(tw(2)));
isequal(o1_1,o1_2)
isequal(o2_1,o2_2)


