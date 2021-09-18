function result = butterfly(in1_re,in1_im,in2_re,in2_im,tw_re,tw_im)
%What the result looks like
result = zeros(2,2);
result(1,1) = in1_re + in2_re; % result_1_re
result(1,2) = in1_im + in2_im; % result_1_im
%out1 = result(1,1) + result(1,2)*1i;
intem_re = in1_re - in2_re;
intem_im = in1_im - in2_im;
%intem*tw
%(intem_re+intem_im)*(tw_re+tw_im)
%result_re = intem_re*tw_re - intem_im*tw_im
%result_im = intem_re*tw_im + tw_re*intem_im;
result(2 ,1) =  intem_re*tw_re - intem_im*tw_im;
result(2 ,2) = intem_re*tw_im + tw_re*intem_im;
%out2 = result(2 ,1) + result(2 ,2)*1i;
end