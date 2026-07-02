## Project Overview

This project implements a **combinational 8-bit Arithmetic Logic Unit (ALU)** in **Verilog HDL** capable of performing arithmetic, logical, shift, comparison, and data transfer operations.

The design was developed following a complete RTL design workflow including:

- RTL Design
- Functional Simulation
- Testbench Verification
- Waveform Analysis
- RTL Elaboration
- FPGA Synthesis using Xilinx Vivado
- Resource Utilization Analysis
- Timing Analysis

The project serves as a fundamental building block for processors, microcontrollers, and digital signal processing systems.



## Features

- 8-bit Combinational ALU
- 15 Supported Operations
- Status Flag Generation
- Modular Verilog Design
- Comprehensive Testbench
- GTKWave Verification
- RTL Schematic
- Synthesized Netlist
- Vivado Synthesis Reports




# ALU Architecture

Inputs

- A [7:0]
- B [7:0]
- ALU_Sel [3:0]

Outputs

- ALU_Out [7:0]
- CarryOut
- Overflow
- Zero
- Negative



# Supported Operations

| Opcode   | Operation |
|----------|----------------|
|0000      |Addition|
|0001      |Subtraction|
|0010      |AND|
|0011      |OR|
|0100      |XOR|
|0101      |NOT|
|0110      |Logical Left Shift|
|0111      |Logical Right Shift|
|1000      |Increment|
|1001      |Decrement|
|1010      |Compare (A>B)|
|1011      |Multiplication|
|1100      |Pass A|
|1101      |Pass B|
|1110      |Clear Output|
|1111      |Reserved|



# Status Flags

| Flag         | Description |
|--------------|-------------|
|CarryOut      |Generated during arithmetic operations|
|Overflow      |Indicates signed arithmetic overflow|
|Zero          |Set when output equals zero|
|Negative      |Indicates MSB of ALU output|


# Tools Used

| Tool | Purpose |
|------|----------|
|Visual Studio Code|Code Editor|
|Git|Version Control|
|GitHub|Repository Hosting|
|Icarus Verilog|Compilation & Simulation|
|GTKWave|Waveform Viewer|
|Xilinx Vivado|RTL Analysis & FPGA Synthesis|
