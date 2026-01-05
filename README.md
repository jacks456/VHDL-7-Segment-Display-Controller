# 7-Segment Display Controller

**Background**
Interfacing binary hardware with human-readable displays requires efficient decoding logic. This project implements a combinational logic decoder that converts 4-bit binary inputs into the signals required to drive a physical 7-segment hexadecimal display.

**The Program**
The core of this project is the optimization of Boolean logic to minimize hardware resource usage.

* **Karnaugh Map Optimization:** Derived and simplified Boolean expressions for all 7 segments (A-G) using K-Maps to ensure the most efficient gate-level implementation.
* **VHDL Implementation:** Coded the optimized logic equations into a VHDL module.
* **Hardware Mapping:** Connected the ZedBoard's physical switches to the logic inputs and the display pins to the logic outputs.
* **Simulation:** Verified correctness using Vivado waveform simulations before hardware deployment.

**Compiling & Running**
1.  **Simulation:** Open the project in Vivado and run the testbench simulation to view the waveform outputs for inputs `0x0` through `0xF`.
2.  **Implementation:** Run the implementation workflow in Vivado to map the design to the ZedBoard's specific pinout constraints (`.xdc` file).
3.  **Deploy:** Program the board and toggle switches to test digits.

**Examples**
*Input vs. Output:*

| Input (Binary) | Switches | Display Output |
| :--- | :--- | :--- |
| `0000` | All Off | **0** |
| `0101` | SW0, SW2 On | **5** |
| `1010` | SW1, SW3 On | **A** |
| `1111` | All On | **F** |
