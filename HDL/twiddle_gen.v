module twiddle_gen(
    input [2:0]  cnt0_in,
    output reg
      [7:0] tw_re,
      [7:0] tw_im
);

always @ ( * ) begin
  case (cnt0_in)
    2: begin
      tw_re = 1;
      tw_im = 0;
    end
    3: begin
      tw_re = 0;
      tw_im = -1;
    end
    4: begin
      tw_re = 1;
      tw_im = 0;
    end
    5: begin
      tw_re = 1;
      tw_im = 0;
    end
    default: begin
      tw_re = 0;
      tw_im = 0;
    end
  endcase
end
endmodule
