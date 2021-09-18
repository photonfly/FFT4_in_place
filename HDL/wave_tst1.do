onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /fft4_top_tb/top1/in1_0
add wave -noupdate /fft4_top_tb/top1/in1_1
add wave -noupdate /fft4_top_tb/top1/in1_buff0_0
add wave -noupdate /fft4_top_tb/top1/in1_buff1_0
add wave -noupdate /fft4_top_tb/top1/in1_buff0_1
add wave -noupdate /fft4_top_tb/top1/in1_buff1_1
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {76910 ps} 0}
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
WaveRestoreZoom {0 ps} {105 ns}
