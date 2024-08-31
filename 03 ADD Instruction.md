# ADD Instruction in Assembly Language

The `ADD` instruction is used to perform arithmetic addition between two operands. This operation can involve immediate values, registers, or memory locations.

## Format

`ADD <destination>, <source_operand>`

- **ADD**: Adds the value from the source operand to the destination operand.
- **Operation**: `destination = destination + source_operand`
- **destination**: Can be a register or memory location.
- **source_operand**: Can be an immediate value, register, or memory location.

---

## Example: Adding Two 16-bit Numbers

Let's consider an example where we add two 16-bit hexadecimal numbers: `1234H` and `5678H`.

`1234H + 5678H`

The addition is performed starting from the least significant bits (LSBs):

- 4 + 8 = `12H` == `C`
- 3 + 7 = `10H` == `A`
- 2 + 6 = `8H`
- 1 + 5 = `6H`

So, the final answer will be: `1234H + 5678H = 68ACH`.

- First of we need to put these two numbers into a register.
- Then perform addition.

![Adding Two 16-bit Numbers](<./Assests/1Adding Two 16-bit Numbers.png>) <br>
![Adding Two 16-bit Numbers](<./Assests/2Adding Two 16-bit Numbers.png>) <br>
![Adding Two 16-bit Numbers](<./Assests/3Adding Two 16-bit Numbers.png>) <br>
![Adding Two 16-bit Numbers](<./Assests/4Adding Two 16-bit Numbers.png>) <br><br>

### Assembly Code for Adding Two Numbers

First, we need to move these two numbers into registers, then perform the addition:

```assembly
MOV AX, 1234H       ; Move the hexadecimal value 1234H into the AX register.
MOV BX, 5678H       ; Move the hexadecimal value 5678H into the BX register.

ADD BX, AX      ; Add the value in AX to BX and store the result in BX.

ADD BH, 24H     ; Add the hexadecimal value 24H to the higher 8 bits (BH) of the BX register.

HLT     ; Halt the execution of the program (stop the CPU).
```

## Adding 8-bit Values

Similarly, the ADD instruction can be used for 8-bit registers:

```assembly
MOV AL, 12H   ; Move 12H to AL
ADD AL, 34H   ; Add 34H to AL
```

---

For any arithmetic operations, remember that the ADD instruction affects the CPU's flags (like the Carry flag, Zero flag, etc.), which can be used for further conditional operations.

---

### Sample Code For Understanding: 🔥

Here’s a simple "ADD" operation program written in assembly language for TASM:

```assembly
; @author: Avinash Yadav
; @file-name: Lecture-03.asm

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;      ADD Operation       ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Move the hexadecimal value 1234H into the AX register.
MOV AX, 1234H
; Move the hexadecimal value 5678H into the BX register.
MOV BX, 5678H

; Add the value in AX to BX and store the result in BX.
ADD BX, AX


; Add the hexadecimal value 24H to the higher 8 bits (BH) of the BX register.
ADD BH, 24H


; Halt the execution of the program (stop the CPU).
HLT





; Explanation:
; - AX, BX: General-purpose registers in the 8086 microprocessor.
;       - AX: Accumulator register (16-bit).
;       - BX: Base register (16-bit).
; - BH: The higher 8-bit of the BX register.
; - MOV: Copies the value from the source to the destination register.
; - ADD: Adds the source value to the destination value and stores the result in the destination.
; - HLT: Stops the CPU until a reset or interrupt occurs.

; This code performs the following operations:
; 1. It loads 1234H into AX and 5678H into BX.
; 2. It then adds the value in AX to BX.
; 3. After that, it adds 24H to the upper 8 bits of BX (BH).
; 4. Finally, it halts the execution.
```
