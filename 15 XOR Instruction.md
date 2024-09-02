# **XOR Instruction ⛓️**

The `XOR` (Exclusive OR) instruction is used to perform a bitwise exclusive OR operation between two operands. The result is stored in the destination operand. This operation is commonly used for toggling bits, clearing registers, or implementing certain logical functions.

---

## **Format 🔢**

```assembly
XOR <destination_operand>, <source_operand>
```

- **Operation**: `D (XOR) S → D` The destination operand and source operand are XORed together bit by bit.
- **destination_operand**: The operand that will store the result.
- **source_operand**: The operand with which the destination will be XORed.
- The operation performs a bitwise XOR between corresponding bits of the destination and source operands.

## Example Usage 📘

Let’s take an example where we XOR the value in the `AX` register with the value in the `CX` register:

```assembly
MOV AX, 45A8H   ; 0100 0101 1010 1000
MOV CX, 0E87H   ; 0000 1110 1000 0111

XOR CX, AX      ; Perform a bitwise XOR operation between CX and AX
                ; Result in CX: 0100 1011 0010 1111 => 4B2FH

HLT             ; Halt the execution
```

### **Explanation 🔍**

- `XOR CX, AX`: This operation XORs each bit of the `CX` register with the corresponding bit of the `AX` register. The result is stored back in the `CX` register.

- The XOR operation works as follows:

  - If both bits are the same (either both 0 or both 1), the result is `0`.
  - If the bits are different (one is 0 and the other is 1), the result is `1`.

- For example, XORing the binary values:

  - `AX = 0100 0101 1010 1000` (45A8H)
  - `CX = 0000 1110 1000 0111` (0E87H)
  - Result: `0100 1011 0010 1111` (4B2FH)

- The result of `0100 0101 1010 1000 (AX)` **XOR** `0000 1110 1000 0111 (CX)` is `0100 1011 0010 1111`, which is **4B2FH**.

---

![XOR Instruction](<./Assests/1XOR Instruction.png>) <br>
![XOR Instruction](<./Assests/2XOR Instruction.png>) <br>
![XOR Instruction](<./Assests/3XOR Instruction.png>) <br>
![XOR Instruction](<./Assests/4XOR Instruction.png>) <br><br>

---

---

## Usage Context 🎯

- **Clearing a Register**: XORing a register with itself (e.g., `XOR AX, AX`) results in `0`, effectively clearing the register.
- **Toggling Bits**: XOR can be used to toggle specific bits in a register.

---

This instruction is versatile and a fundamental part of many assembly language programs.

---

## Sample Code For Understanding: 🔥

Here’s a simple "XOR Instruction" operation program written in assembly language for TASM:

```assembly
; @author: Avinash Yadav
; @file-name: Lecture-15.asm

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;        XOR Operation      ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Step 1: Load Immediate Values into AX and CX
; ------------------------------------------------------------
; Move the hexadecimal value 45A8H into the AX register.
; AX is a general-purpose register. The binary representation of 45A8H is:
; 0100 0101 1010 1000
MOV AX, 45A8H

; Move the hexadecimal value 0E87H into the CX register.
; CX is another general-purpose register. The binary representation of 0E87H is:
; 0000 1110 1000 0111
MOV CX, 0E87H

; Step 2: Perform the XOR Operation
; ------------------------------------------------------------
; Perform a bitwise XOR operation between CX and AX.
; The XOR operation compares each bit in CX with the corresponding bit in AX.
; If the bits are different, the result is 1; if the bits are the same, the result is 0.
; Here is the bitwise comparison:
;
;    AX: 0100 0101 1010 1000 (45A8H)
;    CX: 0000 1110 1000 0111 (0E87H)
;   --------------------------------
; Result: 0100 1011 0010 1111 (4B2FH)
;
; The result, 4B2FH, is stored in the CX register.
XOR CX, AX

; Step 3: Halt the Program
; ------------------------------------------------------------
; Halt the execution of the program.
; This instruction stops the CPU from executing further instructions,
; putting it in a halted state. The program execution ends here.
HLT

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;  Detailed Explanation:
;  ----------------------
;  - AX, CX: General-purpose registers in the 8086 microprocessor.
;       - AX: Accumulator register (16-bit), used for various operations.
;       - CX: Count register (16-bit), used in loop operations and as a general-purpose register.
;  - XOR: The XOR instruction performs a bitwise logical XOR between the source and destination operands.
;         The result is stored in the destination operand.
;  - HLT: The HLT instruction stops the CPU until a reset or external interrupt occurs.
;
; This code performs the following operations:
; 1. Loads 45A8H into AX and 0E87H into CX.
; 2. Performs a bitwise XOR between AX and CX, resulting in 4B2FH, which is stored in CX.
; 3. Halts the execution of the program.
```
