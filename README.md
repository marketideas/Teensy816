# Teensy816
A Teensy 4.1 based board with onboard FPGA to allow direct access to a W65816 based computer. 

The initial version will be tailored to the Apple //gs.
I can't guarantee that this will go anywhere, but the idea is to create a board that will allow a 600MHz Teensy 4.1 board to read/write memory and I/O locations directly from the GS motherboard, and simulate the 65816 processor in realtime. Running at 600Mhz, the CPU on the teensy is expected to be able to accelerate the system by at least a factor of 10x.  
Additionally, by using on board RAM from the Teensy, a simulated 8GB memory card would be added to the system.
Eventually, the plan would be to add a larger or second FPGA that would mirror the GS's video memory, and provide an HDMI output for all supported video modes.
