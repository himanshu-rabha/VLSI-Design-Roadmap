# Day 04 – Decoders and Encoders | Verilog HDL

## Overview

Designed and verified multiple combinational logic circuits using Verilog HDL. Implemented decoders, hierarchical decoder architectures using module reuse, encoders, and priority encoders. Developed testbenches and verified functionality using simulation waveforms in Vivado.

---

## Projects Completed

### 1. 2-to-4 Decoder

* Implemented using combinational logic and assign statements.
* Generated one-hot outputs based on 2-bit binary inputs.
* Verified functionality using simulation.

### 2. 2-to-4 Decoder with Enable

* Added enable control signal to decoder.
* Outputs remain inactive when enable is low.
* Used as a reusable building block for larger decoders.

### 3. 3-to-8 Decoder

* Designed using Boolean expressions and assign statements.
* Generated eight one-hot outputs from three input bits.
* Verified all input combinations through simulation.

### 4. Hierarchical 3-to-8 Decoder

* Built using two 2-to-4 Decoders with Enable.
* Implemented module hierarchy and decoder expansion.
* Verified decoder selection using enable logic.

### 5. Hierarchical 4-to-16 Decoder

* Built using two Hierarchical 3-to-8 Decoders.
* Demonstrated scalable hierarchical RTL design.
* Verified all 16 output combinations through simulation.

### 6. 4-to-2 Encoder

* Implemented binary encoding using combinational logic.
* Converted one-hot inputs into binary outputs.
* Verified functionality using simulation waveforms.

### 7. 4-to-2 Priority Encoder

* Implemented using behavioral Verilog.
* Used always @(*) and if-else constructs.
* Resolved multiple active input conditions using priority logic.
* Verified priority functionality through simulation.

---

## Concepts Learned

### Decoder Concepts

* Decoder Fundamentals
* One-Hot Encoding
* Decoder Expansion
* Enable Signals
* Truth Table to Boolean Logic Conversion

### Hierarchical Design

* Module Reuse
* Structural Modeling
* Hierarchical RTL Design
* Scalable Digital Design Methodology

### Encoder Concepts

* Binary Encoding
* Priority Encoding
* Input Priority Resolution

### Verilog HDL Concepts

* assign Statements
* Continuous Assignment
* always @(*) Blocks
* if-else Decision Logic
* Combinational Circuit Design
* Testbench Development
* Functional Verification
* Waveform Analysis

---

## Key Learning Outcomes

* Understood the relationship between decoders and encoders.
* Learned how enable signals are used in hierarchical designs.
* Built larger designs using smaller reusable modules.
* Learned the difference between structural and behavioral modeling.
* Gained experience writing and debugging Verilog testbenches.
* Developed confidence in analyzing simulation waveforms.

---

## Tools Used

* Verilog HDL
* Xilinx Vivado Simulator
* Waveform Viewer
* Git & GitHub

---

## Next Steps

* Comparators
* Arithmetic Logic Unit (ALU)
* D Flip-Flops
* Counters
* Shift Registers
* Finite State Machines (FSM)
* UART Design
