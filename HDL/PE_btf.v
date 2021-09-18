module PE_btf(
    input  [7:0] in0_re,
           [7:0] in0_im,
           [7:0] in1_re,
           [7:0] in1_im,
           [7:0] tw_re,
           [7:0] tw_im,
    output reg
           [7:0] out0_re,
           [7:0] out0_im,
           [7:0] out1_re,
           [7:0] out1_im
);
reg [7:0]intem_re,intem_im;
// Using a non-block assginment instead
always @ ( * ) begin
  out0_re <= in0_re + in1_re;
  out0_im <= in0_im + in1_im;
end
always @ ( * ) begin
  intem_re <= in0_re - in1_re;
  intem_im <= in0_im - in1_im;
end
always @ ( * ) begin
  out1_re <= intem_re*tw_re - intem_im*tw_im;
  out1_im = intem_re*tw_im + tw_re*intem_im;
end
endmodule
