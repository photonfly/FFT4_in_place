module fft4_top (
  input clk,rst_n,
  input [7:0] in1_0, //real part of in1
  input [7:0] in1_1, // img part of in1
  output[7:0] out1_0,
  output[7:0] out1_1,
  output[7:0] out2_0,
  output[7:0] out2_1
  );
//Variables
// input buffers
reg [7:0] in1_buff0_0,in1_buff0_1;
reg [7:0] in1_buff1_0,in1_buff1_1;
reg [7:0] in2_buff0_0,in2_buff0_1;
reg [7:0] in2_buff1_0,in2_buff1_1;
//mux2out
//wire [7:0] mux2out0,mux2out1,mux2out2,mux2out3;
//mux2pe
wire [7:0] mux2pe0,mux2pe1,mux2pe2,mux2pe3;
//sel_ctrl
wire [1:0] sel;
wire [2:0] cnt0;
//mem_ctrl_s
wire mem_sel;
//twiddle_gen
wire [7:0] tw_re, tw_im;
//PE
//reg [7:0] out1_0,out1_1,out2_0,out2_1;
//Mem mem_ctrl
wire mem_in_ctrl_s;
wire mem_out_ctrl_s;
//mem
wire [7:0] mem_out_0_0,mem_out_0_1,mem_out_1_0,mem_out_1_1;
wire [7:0] out0_re, out0_im, out1_re, out1_im;

//input data buffering
always @ (posedge clk or negedge rst_n) begin
  if (!rst_n) begin
    in1_buff0_0 <= 0;
    in1_buff0_1 <= 0;
    in1_buff1_0 <= 0;
    in1_buff1_1 <= 0;
  end
  else begin
    in1_buff0_0 <= in1_0;
    in1_buff0_1 <= in1_buff0_0;
    in1_buff1_0 <= in1_1;
    in1_buff1_1 <= in1_buff1_0;
  end
end

//mux1
mux1 mx1(
  .in1_0(in1_buff0_1),
  .in1_1(in1_buff1_1),
  .in2_0(in1_0),
  .in2_1(in1_1),
  .in3_0(mem_out_0_0),
  .in3_1(mem_out_0_1),
  .in4_0(mem_out_1_0),
  .in4_1(mem_out_1_1),
  .sel(sel),
  .out1_0(mux2pe0),
  .out1_1(mux2pe1),
  .out2_0(mux2pe2),
  .out2_1(mux2pe3)
  );
sel_ctrl sc1(
  .clk(clk),
  .rst_n(rst_n),
  .sel_sig(sel),
  .cnt0_out(cnt0)
    );
twiddle_gen tw1(
  .cnt0_in(cnt0),
  .tw_re(tw_re),
  .tw_im(tw_im)
  );

//PE
PE_btf PE1(
  .in0_re(mux2pe0),
  .in0_im(mux2pe1),
  .in1_re(mux2pe2),
  .in1_im(mux2pe3),
  .tw_re(tw_re),
  .tw_im(tw_im),
  .out0_re(out0_re),
  .out0_im(out0_im),
  .out1_re(out1_re),
  .out1_im(out1_im)
  );
mem_in_ctrl mic1(
  .count_in(cnt0),
  .mem_in_ctrl_s(mem_in_ctrl_s)
  );
mem_out_ctrl moc1(
  .count_in(cnt0),
  .mem_out_ctrl_s(mem_out_ctrl_s)
  );
mem m1(
  .clk(clk),
  .rst_n(rst_n),
  .mem_read_ctrl_s(mem_out_ctrl_s),
  .mem_write_ctrl_s(mem_in_ctrl_s),
  .write_0_0(out0_re),
  .write_0_1(out0_im),
  .write_1_0(out1_re),
  .write_1_1(out1_im),
  .read_0_0(mem_out_0_0),
  .read_0_1(mem_out_0_1),
  .read_1_0(mem_out_1_0),
  .read_1_1(mem_out_1_1)
  );

//outputs
assign out1_0 = out0_re;
assign out1_1 = out0_im;
assign out2_0 = out1_re;
assign out2_1 = out1_im;



endmodule // fft4_top
