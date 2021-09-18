onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /fft4_top_tb/clk
add wave -noupdate /fft4_top_tb/top1/sc1/cnt0_out
add wave -noupdate /fft4_top_tb/top1/sc1/sel_sig
add wave -noupdate -divider {New Divider}
add wave -noupdate /fft4_top_tb/top1/sc1/sel_sig
add wave -noupdate /fft4_top_tb/top1/mx1/in1_0
add wave -noupdate /fft4_top_tb/top1/mx1/in2_0
add wave -noupdate /fft4_top_tb/top1/mx1/in1_1
add wave -noupdate /fft4_top_tb/top1/mx1/in2_1
add wave -noupdate /fft4_top_tb/top1/mux2pe0
add wave -noupdate /fft4_top_tb/top1/mux2pe1
add wave -noupdate /fft4_top_tb/top1/mux2pe2
add wave -noupdate /fft4_top_tb/top1/mux2pe3
add wave -noupdate -divider {New Divider}
add wave -noupdate /fft4_top_tb/top1/mx1/in3_0
add wave -noupdate /fft4_top_tb/top1/mx1/in3_1
add wave -noupdate /fft4_top_tb/top1/mx1/in4_0
add wave -noupdate /fft4_top_tb/top1/mx1/in4_1
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {227570 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 202
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
WaveRestoreZoom {0 ps} {672 ns}
