function [out1,out2] = butterfly_origin(in1,in2,tw)
out1 = in1 + in2;
out2 = (in1 - in2)*tw;
end