module mux1 (
  input [7:0] in1_0,in1_1,in2_0,in2_1,
  input [7:0] in3_0,in3_1,in4_0,in4_1,
  input [1:0] sel,
  output reg [7:0] out1_0,out1_1,out2_0,out2_1
  );

always @ ( * ) begin
  case (sel)
    0: begin
      out1_0 = 0;
      out1_1 = 0;
      out2_0 = 0;
      out2_1 = 0;
    end
    1: begin
      out1_0 = in1_0;
      out1_1 = in1_1;
      out2_0 = in2_0;
      out2_1 = in2_1;
    end
    2: begin
      out1_0 = in3_0;
      out1_1 = in3_1;
      out2_0 = in4_0;
      out2_1 = in4_1;
    end
    default: begin
      out1_0 = 0;
      out1_1 = 0;
      out2_0 = 0;
      out2_1 = 0;
    end
  endcase
end
endmodule // mux1
