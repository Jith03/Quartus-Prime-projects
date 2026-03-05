# Verilog Adders Project

This project contains basic digital arithmetic circuits implemented using **Verilog HDL** and simulated using **Intel Quartus Prime / ModelSim**.
The purpose of this project is to understand hierarchical digital design and arithmetic operations used in digital systems and processors.

---

## 📂 Project Contents

The project currently includes the following modules:

### 1. Full Adder

A **1-bit full adder** that performs the addition of three inputs:

* A
* B
* Carry-in (Cin)

Outputs:

* Sum
* Carry-out (Cout)

Boolean equations:

Sum = A ⊕ B ⊕ Cin
Cout = (A · B) + (B · Cin) + (Cin · A)


### 2. Ripple Carry Adder

A **4-bit ripple carry adder** constructed using multiple full adders.

Features:

* Uses hierarchical design
* Carry propagates from one full adder to the next
* Demonstrates basic multi-bit arithmetic circuits


### 3. Adder / Subtractor

A **4-bit adder–subtractor circuit** that can perform both addition and subtraction.

Control Input:

| Mode | Operation           |
| ---- | ------------------- |
| 0    | Addition (A + B)    |
| 1    | Subtraction (A − B) |

Subtraction is implemented using **two's complement arithmetic**:

A − B = A + (~B + 1)


## 🧪 Testbenches

Each module has a corresponding **Verilog testbench** used for simulation and verification.

Testbenches apply different input combinations and verify that the outputs match expected results.


## 🛠 Tools Used

* Verilog HDL
* Intel Quartus Prime
* ModelSim Simulator
* Git & GitHub


## 🎯 Learning Objectives

This project was created to practice:

* Verilog module design
* Hierarchical hardware design
* Digital arithmetic circuits
* Testbench creation
* FPGA design workflow

## 🚀 Future Improvements

Possible extensions of this project:

* Carry Lookahead Adder (CLA)
* Parameterized N-bit adder
* Overflow detection
* Simple ALU implementation


Electronics and Telecommunication Engineering Undergraduate
University of Moratuwa
