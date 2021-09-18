module mem_out_ctrl (
  input [2:0] count_in,
  output mem_out_ctrl_s
  );
reg mem_out_ctrl_s_r;
always @ ( * ) begin
  case (count_in)
    5: mem_out_ctrl_s_r = 1;
    default: mem_out_ctrl_s_r = 0;
  endcase
end
assign mem_out_ctrl_s = mem_out_ctrl_s_r;
endmodule // mem_ctrl
