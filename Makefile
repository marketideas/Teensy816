

all: 816.o

816.o: 816.vhdl
	ghdl -i 816.vhdl
	ghdl -m teensy816
	
clean:
	ghdl --clean

