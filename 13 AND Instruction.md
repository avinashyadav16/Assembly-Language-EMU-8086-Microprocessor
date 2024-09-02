# **AND Instruction** 🛤️

The `AND` instruction performs a bitwise logical AND operation between two operands. The result is stored in the destination operand.

---

### Format 🔢

**`AND <destination>, <source>`**

- **Operation**: `D . S → D`
- The destination operand and source operand are ANDed together bit by bit.
- The result of the AND operation replaces the value of the destination operand.

---

### Example Usage 📘

Let’s take an example where we AND the value in the `AX` register with `0F0FH`:

```assembly
MOV AX, 1234H   ; Move the value 1234H into the AX register
AND AX, 0F0FH   ; Perform a bitwise AND operation between AX and 0F0FH
HLT             ; Halt the execution
```

**Explanation 🔍**

- `AND AX, 0F0FH`: This operation ANDs each bit of the `AX` register with the corresponding bit of the immediate value `0F0FH`. The result is stored back in the `AX` register.
- The result of `1234H AND 0F0FH` will leave only the bits in `AX` where both corresponding bits in `AX` and `0F0FH` are `1`.

---

This instruction is useful for masking out certain bits in a register, preserving only the bits that you want to keep.

---

## Sample Code For Understanding: 🔥

Here’s a simple "AND Instruction" operation program written in assembly language for TASM:

```assembly
; @author: Avinash Yadav
; @file-name: Lecture-13.asm

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;        AND Operation      ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Step 1: Load Immediate Values into AX and CX
; ------------------------------------------------------------
; Move the hexadecimal value 45A8H into the AX register.
; AX is a general-purpose register. The binary representation of 45A8H is:
; 0100 0101 1010 1000
MOV AX, 45A8H

; Move the hexadecimal value 0E87H into the CX register.
; CX is another general-purpose register. The binary representation of 0E87H is:
; 0000 1110 1000 0117
MOV CX, 0E87H

; Step 2: Perform the AND Operation
; ------------------------------------------------------------
; Perform a bitwise AND operation between CX and AX.
; The AND operation compares each bit in CX with the corresponding bit in AX.
; If both bits are 1, the result is 1; otherwise, the result is 0.
; Here is the bitwise comparison:
;
;    AX: 0100 0101 1010 1000 (45A8H)
;    CX: 0000 1110 1000 0111 (0E87H)
;   --------------------------------
; Result: 0000 0100 1000 0000 (0480H)
;
; The result, 0480H, is stored in the CX register.
AND CX, AX

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
;  - AND: The AND instruction performs a bitwise logical AND between the source and destination operands.
;         The result is stored in the destination operand.
;  - HLT: The HLT instruction stops the CPU until a reset or external interrupt occurs.
;
; This code performs the following operations:
; 1. Loads 45A8H into AX and 0E87H into CX.
; 2. Performs a bitwise AND between AX and CX, resulting in 0480H, which is stored in CX.
; 3. Halts the execution of the program.
```

---

![AND Instruction](<./Assests/1AND Instruction.png>) <br>
![AND Instruction](<./Assests/2AND Instruction.png>) <br>
![AND Instruction](<./Assests/3AND Instruction.png>) <br>
![AND Instruction](<./Assests/4AND Instruction.png>) <br><br>

---

---
