# MOV Instruction in Assembly Language 🛤️

The `MOV` instruction is used to transfer data from one location to another in the 8086 microprocessor. Below is a detailed explanation of how the `MOV` operation works and examples of how to use it.

## Format 🔢

`MOV <destination_operand>, <source_operand>`

- **MOV**: Moves the value from the source to the destination.
- **Operation**: `S -> D`
- **destination_operand**: Can be a register or memory location, but **cannot be an immediate value** (a value provided directly in the instruction).
- **source_operand**: Can be a register, memory location, or an immediate value.

---

## Moving a 16-bit Value to a Register 🕵️

When moving a 16-bit value to a register, you can directly load the value into the register:

```assembly
MOV AX, 1234H  ; Moves the immediate value 1234H into register AX
```

![Moving a 16-bit Value to a Register](<./Assests/1Moving a 16-bit Value to a Register.png>) <br>
![Moving a 16-bit Value to a Register](<./Assests/2Moving a 16-bit Value to a Register.png>) <br> <br>

---

## Moving a 16-bit Value from One Register to Another ⛳

To transfer a value from one 16-bit register to another, use the MOV instruction as follows:

```assembly
MOV AX, 1234H  ; Load AX with 1234H
MOV CX, AX     ; Copy the value from AX to CX
HLT            ; Halts the program to observe the result
```

This will move the value `1234H` into the `AX` register and then copy that value to the `CX` register. The `HLT` command is used to halt the program so that you can observe the results.

![Moving a 16-bit Value from One Register to Another](<./Assests/3Moving a 16-bit Value from One Register to Another.png>) <br>
![Moving a 16-bit Value from One Register to Another](<./Assests/4Moving a 16-bit Value from One Register to Another.png>) <br>
![Moving a 16-bit Value from One Register to Another](<./Assests/5Moving a 16-bit Value from One Register to Another.png>) <br> <br>

---

## Moving an 8-bit Value to a Register 🛫

To move an 8-bit value into a register:

```assembly
MOV AL, 12H  ; Moves the immediate value 12H into the lower 8-bits of the AX register
```

![Moving 8-bits value to a register](<./Assests/6Moving 8-bits value to a register.png>) <br>
![Moving 8-bits value to a register](<./Assests/7Moving 8-bits value to a register.png>) <br> <br>

---

## Moving an 8-bit Value from One Register to Another 📌

```assembly
MOV AL, 12H  ; Load AL with 12H
MOV BL, AL   ; Copy the value from AL to BL
HLT          ; Halts the program to observe the result
```

This example moves the value `12H` into the `AL` register and then copies that value to the `BL` register. The `HLT` command halts the program execution.
![Moving 8-bits Value from one register to another](<./Assests/8Moving 8-bits Value from one register to another.png>) <br>
![Moving 8-bits Value from one register to another](<./Assests/9Moving 8-bits Value from one register to another.png>) <br>
![Moving 8-bits Value from one register to another](<./Assests/10Moving 8-bits Value from one register to another.png>) <br> <br>

---

For more complex operations, make sure to carefully consider the size of the operands (8-bit vs. 16-bit) and whether the destination is a register or a memory location.

---

### Sample Code For Understanding: 🔥

Here’s a simple "MOV" operation program written in assembly language for TASM:

```assembly
; @author: Avinash Yadav
; @file-name: Lecture-02.asm

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;      MOV Operation       ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Move the hexadecimal value 1234H into the AX register.
MOV AX, 1234H
; Copy the value from AX into the CX register.
MOV CX, AX


; Move the hexadecimal value 24H into the DH register.
MOV DH, 24H
; Copy the value from DH into the BL register.
MOV BL, DH


; Halt the execution of the program (stop the CPU).
HLT




; Explanation:

; - AX, CX, DH, BL are registers in the 8086 microprocessor.
;       - AX: Accumulator register (16-bit).
;       - CX: Count register (16-bit).
;       - DH: Higher 8-bit of the DX register.
;       - BL: Lower 8-bit of the BX register.
; - MOV: This instruction copies the data from the source to the destination register.
; - HLT: Halts the CPU until the next hardware reset or interrupt.

; This code simply moves some hexadecimal values into registers and then halts the execution.
```
