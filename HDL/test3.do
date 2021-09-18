# run.do
# Fortsätt köra trots rapporterade fel:
set BreakOnAssertion 3

# Definiera design (både entity och filer):
set design fft4_top

# Kompilera koden:
vlib work
vlog -93 ${design}.v
vlog -93 ${design}_tb.v
vlog -93 mem_in_ctrl.v
vlog -93 mem_out_ctrl.v
vlog -93 mem.v
vlog -93 mux1.v
vlog -93 PE_btf.v
vlog -93 sel_ctrl.v
vlog -93 twiddle_gen.v


# Ladda in koden i simulatorn:
vsim -voptargs=+acc ${design}_tb

#do wave_tst1.do
do wave_tst3.do

# restart -f

# Kör tills det inte finns något kvar att simulera:
run 160ns

# Zooma wave-fönstret så att allt syns:
wave zoom full
