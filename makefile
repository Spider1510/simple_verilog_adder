compile:
	echo "Compiling rca.v and tb_rca.v using iVerilog"
	iverilog rca.v tb.v

display:
	echo "Display TB display output"
	./a.out

waveform:
	echo "Display waveform using gtkwave"
	gtkwave tb_rca.vcd

clean:
	echo "Deleting generated files"
	rm -rf a.out tb_rca.vcd


