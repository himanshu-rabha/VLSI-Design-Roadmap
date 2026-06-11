# Day 05 – Comparators and ALU | Verilog HDL

## Overview

Designed and verified digital comparison circuits and a basic Arithmetic Logic Unit (ALU) using Verilog HDL. Learned how to compare binary numbers, perform arithmetic and logical operations, and use behavioral modeling with `always @(*)` and `case` statements.

---

## Projects Completed

### 1. 1-Bit Comparator (Concept Study)

* Studied comparison between two 1-bit inputs.
* Generated outputs for:

  * A > B
  * A < B
  * A = B
* Derived Boolean equations from the truth table.

#### Equations

```verilog
assign gt = a & ~b;
assign lt = ~a & b;
assign eq = ~(a ^ b);
```

---

### 2. 4-Bit Comparator

* Compared two 4-bit binary numbers.
* Implemented using Verilog relational operators.
* Verified all comparison conditions through simulation.

#### Inputs

```verilog
input [3:0] a;
input [3:0] b;
```

#### Outputs

```verilog
gt  // A > B
lt  // A < B
eq  // A == B
```

#### Verilog Implementation

```verilog
assign gt = (a > b);
assign lt = (a < b);
assign eq = (a == b);
```

---

### 3. 4-Bit Arithmetic Logic Unit (ALU)

Implemented a basic 4-bit ALU capable of performing arithmetic and logical operations.

#### Inputs

```verilog
input [3:0] a;
input [3:0] b;
input [1:0] sel;
```

#### Output

```verilog
output reg [3:0] result;
```

#### Operations

| SEL | Operation   |
| --- | ----------- |
| 00  | Addition    |
| 01  | Subtraction |
| 10  | AND         |
| 11  | OR          |

#### Example Operations

```text
A = 0011
B = 0101

ADD -> 1000
```

```text
A = 0110
B = 0010

AND -> 0010
```

```text
A = 1000
B = 1001

OR -> 1001
```

---

## Verilog Concepts Learned

### Relational Operators

```verilog
>
<
==
```

Used in comparator design.

---

### Arithmetic Operators

```verilog
+
-
```

Used for ALU arithmetic operations.

---

### Bitwise Operators

```verilog
&
|
```

Used for ALU logic operations.

---

### Behavioral Modeling

Learned to implement combinational circuits using:

```verilog
always @(*)
```

---

### Case Statements

Used operation selection through:

```verilog
case(sel)
```

This is commonly used in:

* ALUs
* FSMs
* Protocol Controllers
* Processors

---

## Simulation and Verification

Verified:

* Greater Than condition
* Less Than condition
* Equality condition
* Addition
* Subtraction
* AND operation
* OR operation

Analyzed waveform outputs and confirmed correct functionality.

---

## Key Learning Outcomes

* Understood digital comparison logic.
* Learned Verilog relational operators.
* Implemented a 4-bit comparator.
* Built a basic ALU using behavioral Verilog.
* Learned the difference between arithmetic and logical operations.
* Gained experience using `always @(*)` and `case`.
* Improved waveform debugging and verification skills.

---

## Tools Used

* Verilog HDL
* Xilinx Vivado
* Vivado Simulator
* Git & GitHub

---

## Next Steps

### Day 06 – Sequential Logic

Topics to be covered:

* D Flip-Flop
* SR Flip-Flop
* JK Flip-Flop
* T Flip-Flop
* Counters
* Shift Registers

These components introduce clock-based designs and form the foundation of digital systems, processors, communication protocols, and FPGA design.
