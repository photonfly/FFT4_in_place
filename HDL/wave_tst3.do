onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /fft4_top_tb/top1/in1_0
add wave -noupdate /fft4_top_tb/top1/in1_1
add wave -noupdate /fft4_top_tb/top1/in1_buff0_0
add wave -noupdate /fft4_top_tb/top1/in1_buff1_0
add wave -noupdate /fft4_top_tb/top1/in1_buff0_1
add wave -noupdate /fft4_top_tb/top1/in1_buff1_1
add wave -noupdate -divider sel_ctrl
add wave -noupdate /fft4_top_tb/clk
add wave -noupdate /fft4_top_tb/top1/sc1/cnt0_out
add wave -noupdate /fft4_top_tb/top1/sc1/sel_sig
add wave -noupdate -divider mux1
add wave -noupdate /fft4_top_tb/top1/sc1/sel_sig
add wave -noupdate /fft4_top_tb/top1/mx1/in1_0
add wave -noupdate /fft4_top_tb/top1/mx1/in2_0
add wave -noupdate /fft4_top_tb/top1/mx1/in1_1
add wave -noupdate /fft4_top_tb/top1/mx1/in2_1
add wave -noupdate /fft4_top_tb/top1/mux2pe0
add wave -noupdate /fft4_top_tb/top1/mux2pe1
add wave -noupdate /fft4_top_tb/top1/mux2pe2
add wave -noupdate /fft4_top_tb/top1/mux2pe3
add wave -noupdate -divider mux_in
add wave -noupdate -radix decimal /fft4_top_tb/top1/mx1/in3_0
add wave -noupdate -radix decimal /fft4_top_tb/top1/mx1/in3_1
add wave -noupdate -radix decimal /fft4_top_tb/top1/mx1/in4_0
add wave -noupdate -radix decimal /fft4_top_tb/top1/mx1/in4_1
add wave -noupdate -divider tw_gen
add wave -noupdate /fft4_top_tb/top1/sc1/cnt0_out
add wave -noupdate /fft4_top_tb/top1/sc1/sel_sig
add wave -noupdate /fft4_top_tb/top1/tw1/tw_re
add wave -noupdate /fft4_top_tb/top1/tw1/tw_im
add wave -noupdate -divider PE_cal
add wave -noupdate /fft4_top_tb/top1/sc1/cnt0_out
add wave -noupdate -radix decimal /fft4_top_tb/top1/PE1/in0_re
add wave -noupdate -radix decimal /fft4_top_tb/top1/PE1/in0_im
add wave -noupdate -radix decimal /fft4_top_tb/top1/PE1/in1_re
add wave -noupdate -radix decimal /fft4_top_tb/top1/PE1/in1_im
add wave -noupdate -radix decimal /fft4_top_tb/top1/PE1/tw_re
add wave -noupdate -radix decimal /fft4_top_tb/top1/PE1/tw_im
add wave -noupdate -radix decimal /fft4_top_tb/top1/PE1/out0_re
add wave -noupdate -radix decimal /fft4_top_tb/top1/PE1/out0_im
add wave -noupdate -radix decimal /fft4_top_tb/top1/PE1/out1_re
add wave -noupdate -radix decimal /fft4_top_tb/top1/PE1/out1_im
TreeUpdate [SetDefaultTree]
quietly WaveActivateNextPane
add wave -noupdate /fft4_top_tb/top1/sc1/cnt0_out
add wave -noupdate /fft4_top_tb/top1/m1/mem_write_ctrl_s
add wave -noupdate -radix decimal /fft4_top_tb/top1/m1/write_0_0
add wave -noupdate -radix decimal /fft4_top_tb/top1/m1/write_0_1
add wave -noupdate -radix decimal /fft4_top_tb/top1/m1/write_1_0
add wave -noupdate -radix decimal /fft4_top_tb/top1/m1/write_1_1
add wave -noupdate -radix decimal /fft4_top_tb/top1/m1/mem1_0
add wave -noupdate -radix decimal /fft4_top_tb/top1/m1/mem1_1
add wave -noupdate -radix decimal /fft4_top_tb/top1/m1/mem2_0
add wave -noupdate -radix decimal /fft4_top_tb/top1/m1/mem2_1
add wave -noupdate -radix decimal /fft4_top_tb/top1/m1/mem3_0
add wave -noupdate -radix decimal /fft4_top_tb/top1/m1/mem3_1
add wave -noupdate -radix decimal -childformat {{{/fft4_top_tb/top1/m1/mem4_0[7]} -radix decimal} {{/fft4_top_tb/top1/m1/mem4_0[6]} -radix decimal} {{/fft4_top_tb/top1/m1/mem4_0[5]} -radix decimal} {{/fft4_top_tb/top1/m1/mem4_0[4]} -radix decimal} {{/fft4_top_tb/top1/m1/mem4_0[3]} -radix decimal} {{/fft4_top_tb/top1/m1/mem4_0[2]} -radix decimal} {{/fft4_top_tb/top1/m1/mem4_0[1]} -radix decimal} {{/fft4_top_tb/top1/m1/mem4_0[0]} -radix decimal}} -subitemconfig {{/fft4_top_tb/top1/m1/mem4_0[7]} {-height 15 -radix decimal} {/fft4_top_tb/top1/m1/mem4_0[6]} {-height 15 -radix decimal} {/fft4_top_tb/top1/m1/mem4_0[5]} {-height 15 -radix decimal} {/fft4_top_tb/top1/m1/mem4_0[4]} {-height 15 -radix decimal} {/fft4_top_tb/top1/m1/mem4_0[3]} {-height 15 -radix decimal} {/fft4_top_tb/top1/m1/mem4_0[2]} {-height 15 -radix decimal} {/fft4_top_tb/top1/m1/mem4_0[1]} {-height 15 -radix decimal} {/fft4_top_tb/top1/m1/mem4_0[0]} {-height 15 -radix decimal}} /fft4_top_tb/top1/m1/mem4_0
add wave -noupdate -radix decimal /fft4_top_tb/top1/m1/mem4_1
add wave -noupdate /fft4_top_tb/top1/sc1/cnt0_out
add wave -noupdate /fft4_top_tb/top1/m1/mem_read_ctrl_s
add wave -noupdate -radix decimal /fft4_top_tb/top1/m1/read_0_0_r
add wave -noupdate -radix decimal /fft4_top_tb/top1/m1/read_0_1_r
add wave -noupdate -radix decimal /fft4_top_tb/top1/m1/read_1_0_r
add wave -noupdate -radix decimal /fft4_top_tb/top1/m1/read_1_1_r
add wave -noupdate -divider mem_in_ctrl
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {167470 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 259
configure wave -valuecolwidth 40
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {336 ns}
