# NOT Instruction 🔄

The `NOT` instruction is used to complement the bits of the destination operand. This means it inverts every bit of the operand (turning 1s into 0s and 0s into 1s). Below is an example of how to use the `NOT` instruction in an 8086 assembly program.

## Format 📝

```assembly
NOT <destination_operand>
```

- **`NOT`**: Inverts all the bits of the destination operand.
- **Operation**: The operand is complemented, meaning every bit in the operand is flipped.
- **destination_operand**: Can be a register or memory location.

## Example Usage 🎯

```assembly
MOV AX, 45A8H   ; Load the hexadecimal value 45A8H into AX.
                ; Binary: 0100 0101 1010 1000
NOT AX          ; Complement the value in AX.
                ; Result in AX: 1011 1010 0101 0111 => BA57H
HLT             ; Halt the CPU.
```

### Explanation 🧠

- **MOV AX, 45A8H**: The value 45A8H is loaded into the AX register. In binary, 45A8H is 0100 0101 1010 1000.
- **NOT AX**: The NOT instruction complements the value in the AX register, flipping each bit. The resulting value in AX is BA57H (1011 1010 0101 0111 in binary).
- **HLT**: The program halts execution.

---

![NOT Instruction](<./Assests/1NOT Instruction.png>) <br>
![NOT Instruction](<./Assests/2NOT Instruction.png>) <br>
![NOT Instruction](<./Assests/3NOT Instruction.png>) <br><br>

---

---

This instruction is useful for bitwise operations, especially in situations where you need to quickly invert the state of a value.

---

## Sample Code For Understanding: 🔥

Here’s a simple "NOT Instruction" operation program written in assembly language for TASM:

```assembly
; @author: Avinash Yadav
; @file-name: Lecture-16.asm

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;        NOT Operation      ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Step 1: Load Immediate Value into AX
; ------------------------------------------------------------
; Move the hexadecimal value 45A8H into the AX register.
; AX is a general-purpose register. The binary representation of 45A8H is:
; 0100 0101 1010 1000
MOV AX, 45A8H

; Step 2: Perform the NOT Operation
; ------------------------------------------------------------
; Perform a bitwise NOT operation on AX.
; The NOT operation inverts each bit in the operand.
;  - A 0 becomes 1.
;  - A 1 becomes 0.
;
; The binary representation of AX before the NOT operation:
;    AX: 0100 0101 1010 1000 (45A8H)
;
; After applying the NOT operation:
;    AX: 1011 1010 0101 0111 (BA57H)
;
; The result, BA57H, is stored back in the AX register.
NOT AX

; Step 3: Halt the Program
; ------------------------------------------------------------
; Halt the execution of the program.
; This instruction stops the CPU from executing further instructions,
; putting it in a halted state. The program execution ends here.
HLT

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;  Detailed Explanation:
;  ----------------------
;  - AX: Accumulator register (16-bit), used for various operations in the 8086 microprocessor.
;  - NOT: The NOT instruction performs a bitwise logical NOT on the operand.
;         It inverts each bit in the register or memory location.
;  - HLT: The HLT instruction stops the CPU until a reset or external interrupt occurs.
;
; This code performs the following operations:
; 1. Loads 45A8H into AX.
; 2. Inverts each bit in AX using the NOT operation, resulting in BA57H, which is stored back in AX.
; 3. Halts the execution of the program.
```
