`timescale 1 ns/10 ps

module fft4_top_tb;

reg clk,rst_n;
reg [7:0] in1_0,in1_1;
wire [7:0] out1_0,out1_1,out2_0,out2_1;

localparam period = 20;
fft4_top top1(
      .clk  ( clk    ),
      .rst_n( rst_n  ),
      .in1_0  ( in1_0    ),
      .in1_1  ( in1_1    ),
      .out1_0 ( out1_0   ),
      .out1_1 ( out1_1   ),
      .out2_0 ( out2_0   ),
      .out2_1 ( out2_1   )
);

//clk,rst_n generation
initial begin
	clk = 1'b0;
	rst_n = 1'b0;
	#20  //��ʱ200ns
	rst_n = 1'b1;
end
always #10 clk = ~clk;

//Data generation
always @(posedge clk)
begin
    in1_0 <= 8'd0;
    in1_1 <= 8'd0;
    #period
    in1_0 <= 8'd1;
    in1_1 <= 8'd1;
    #period
    in1_0 <= 8'd2;
    in1_1 <= 8'd2;
    #period
    in1_0 <= 8'd3;
    in1_1 <= 8'd3;
    #period
    in1_0 <= 8'd0;
    in1_1 <= 8'd0;
    #period
    in1_0 <= 8'd1;
    in1_1 <= 8'd1;
    #period
    in1_0 <= 8'd2;
    in1_1 <= 8'd2;
    #period
    in1_0 <= 8'd3;
    in1_1 <= 8'd3;
end


endmodule
