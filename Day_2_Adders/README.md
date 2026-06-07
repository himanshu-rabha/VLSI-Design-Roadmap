# Day 02 – Half Adder and Full Adder Using Verilog HDL

## Overview

This project implements and verifies Half Adder and Full Adder circuits using Verilog HDL. These are fundamental arithmetic building blocks used in digital systems, processors, ALUs, DSPs, and communication hardware.

The designs were simulated and verified using testbenches, and the outputs were analyzed through waveform simulations.

## Objectives

* Understand binary addition in digital circuits.
* Learn combinational logic design using Verilog HDL.
* Implement arithmetic circuits using logic operators.
* Create and execute testbenches for functional verification.
* Analyze simulation waveforms and validate outputs.

## Half Adder

### Description

A Half Adder adds two single-bit binary inputs and produces:

* Sum
* Carry

### Logic Equations

Sum = A XOR B

Carry = A AND B

### Inputs

* A
* B

### Outputs

* Sum
* Carry

### Key Learning

* XOR operation for binary addition
* Carry generation using AND logic
* Basic combinational circuit design

---

## Full Adder

### Description

A Full Adder adds three single-bit inputs:

* A
* B
* Carry-In (Cin)

and generates:

* Sum
* Carry-Out (Cout)

Unlike a Half Adder, a Full Adder can process a carry from a previous stage, making it suitable for multi-bit arithmetic circuits.

### Logic Equations

Sum = A XOR B XOR Cin

Cout = (A AND B) OR (Cin AND (A XOR B))

### Inputs

* A
* B
* Cin

### Outputs

* Sum
* Cout

### Key Learning

* Carry propagation
* Multi-input combinational logic
* Foundation of larger arithmetic units

---

## Verification

Dedicated testbenches were created for both designs.

All possible input combinations were applied and verified through simulation waveforms.

The observed outputs matched the expected truth tables.

---

## Applications

* Arithmetic Logic Units (ALU)
* Microprocessors
* RISC-V Processors
* Digital Signal Processing
* Address Calculation Units
* FPGA and ASIC Designs

---

## Learning Outcomes

* Verilog RTL coding
* Combinational circuit design
* Testbench development
* Functional verification
* Waveform analysis
* Understanding of carry generation and propagation

## Next Step

Design and implement a 4-Bit Ripple Carry Adder (RCA) using Full Adder modules.
