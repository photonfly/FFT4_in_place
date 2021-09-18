module mem (
  input clk,rst_n,
  input mem_read_ctrl_s,
  input mem_write_ctrl_s,
  input [7:0] write_0_0,write_0_1,write_1_0,write_1_1,
  output [7:0] read_0_0,read_0_1,read_1_0,read_1_1
  );
//variables
reg [7:0]  mem1_0,mem1_1,mem2_0,mem2_1;
reg [7:0]  mem3_0,mem3_1,mem4_0,mem4_1;
reg [7:0] read_0_0_r,read_0_1_r,read_1_0_r,read_1_1_r;

//memory write
always @ (posedge clk or posedge rst_n) begin
  if (!rst_n) begin
    mem1_0 <= 0;
    mem1_1 <= 0;
    mem2_0 <= 0;
    mem2_1 <= 0;
    mem3_0 <= 0;
    mem3_1 <= 0;
    mem4_0 <= 0;
    mem4_1 <= 0;
  end
  else if(!mem_write_ctrl_s)begin
    mem1_0 <= write_0_0;
    mem1_1 <= write_0_1;
    mem2_0 <= write_1_0;
    mem2_1 <= write_1_1;
  end
  else if(mem_write_ctrl_s)begin
    mem3_0 <= write_0_0;
    mem3_1 <= write_0_1;
    mem4_0 <= write_1_0;
    mem4_1 <= write_1_1;
  end
end

//memory read
always @ (*) begin
  if(!mem_read_ctrl_s)begin
    read_0_0_r <= mem1_0;
    read_0_1_r <= mem1_1;
    read_1_0_r <= mem3_0;
    read_1_1_r <= mem3_1;
  end
  else begin
    read_0_0_r <= mem2_0;
    read_0_1_r <= mem2_1;
    read_1_0_r <= mem4_0;
    read_1_1_r <= mem4_1;
  end
end

assign read_0_0 = read_0_0_r;
assign read_0_1 = read_0_1_r;
assign read_1_0 = read_1_0_r;
assign read_1_1 = read_1_1_r;

endmodule // mem_write_ctrl
