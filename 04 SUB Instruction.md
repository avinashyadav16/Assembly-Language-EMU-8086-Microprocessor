# SUB Instruction in Assembly Language

The `SUB` instruction is used to perform subtraction between two operands. This operation can involve immediate values, registers, or memory locations.

## Format

`SUB <destination>, <source>`

- **SUB**: Subtracts the value of the source operand from the destination operand.
- **Operation**: `destination = destination - source`
- **destination**: Can be a register or memory location.
- **source**: Can be an immediate value, register, or memory location.

---

## Example: Subtracting Two 8-bit Numbers

Let's consider an example where we subtract two 8-bit hexadecimal numbers: `0CH` and `08H`.

The subtraction is performed directly:

- C - 8 = `4H`

So, the final answer will be: `0CH - 08H = 04H`.

![SUB Instruction in Assembly Language](<./Assests/1SUB Instruction in Assembly Language.png>) <br>
![SUB Instruction in Assembly Language](<./Assests/2SUB Instruction in Assembly Language.png>) <br>
![SUB Instruction in Assembly Language](<./Assests/3SUB Instruction in Assembly Language.png>) <br>
![SUB Instruction in Assembly Language](<./Assests/4SUB Instruction in Assembly Language.png>) <br><br>

---

For any subtraction operations, remember that the SUB instruction affects the CPU's flags (like the Carry flag, Zero flag, etc.), which can be used for further conditional operations.

---

### Sample Code For Understanding: 🔥

Here’s a simple "SUB" operation program written in assembly language for TASM:

```assembly
; @author: Avinash Yadav
; @file-name: Lecture-04.asm

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;      SUB Operation       ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Move the hexadecimal value 0CH (12 in decimal) into the higher 8 bits of the AX register (AH).
MOV AH, 0CH
; Move the hexadecimal value 08H (8 in decimal) into the BL register.
MOV BL, 08H


; Subtract the value in BL (08H) from the value in AH (0CH) and store the result in AH.
SUB AH, BL


; Halt the execution of the program (stop the CPU).
HLT



; Explanation:
; - AH: The higher 8-bit part of the AX register.
; - BL: The lower 8-bit part of the BX register.
; - SUB: Subtracts the source value from the destination value and stores the result in the destination.
; - HLT: Stops the CPU until a reset or interrupt occurs.

; This code performs the following operations:
; - It loads 0CH (12 in decimal) into AH.
; - It loads 08H (8 in decimal) into BL.
; - Then it subtracts 08H from 0CH, resulting in 04H (4 in decimal), and stores the result in AH.
; - Finally, it halts the execution.
```
