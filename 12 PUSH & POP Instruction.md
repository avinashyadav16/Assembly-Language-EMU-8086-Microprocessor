# PUSH & POP Instructions in 8086 Microprocessor 🔄

This README explains how to use the `PUSH` and `POP` instructions to store and retrieve data from the stack in the 8086 microprocessor. These instructions are fundamental for managing data in stack memory.

---

## Stack Operations Overview 🗄️

### PUSH Instruction 📥

The `PUSH` instruction is used to place data onto the stack. When data is pushed onto the stack, the stack pointer (SP) is decremented by 2 because the stack grows downward in memory.

```assembly
PUSH AX   ; Store data from AX register onto the stack (SP = SP - 2)
```

### POP Instruction 📤

The `POP` instruction retrieves data from the stack and stores it in a specified register or memory location. When data is popped from the stack, the stack pointer (SP) is incremented by 2.

```assembly
POP BX    ; Retrieve data from the stack into BX register (SP = SP + 2)
```

### Stack Pointer (SP) Behavior 📏

The stack pointer (SP) points to the current top of the stack. When the stack is empty, its value is `FFFEH`, which means the stack pointer is at its maximum possible value at the bottom of the stack. As you `PUSH` data onto the stack, the SP decreases, and as you `POP` data off the stack, the SP increases.

**Maximum Value of SP**: `FFFEH` (when the stack is empty)

---

```assembly
.model small
.stack 100h

.data
    VALUE1 DW 1234H   ; Define a 16-bit value in the data segment

.code
main:
    MOV AX, VALUE1    ; Move the value 1234H into the AX register
    PUSH AX           ; Push the value in AX onto the stack

    MOV BX, 0         ; Clear the BX register
    POP BX            ; Pop the value from the stack into the BX register

    HLT               ; Halt the execution

end main
```

**Explanation 🔍**

- **SP (Stack Pointer)**: Holds the address of the last item stored on the stack.
- **PUSH AX**: Decrements SP by 2 and stores the value of AX at the address pointed to by SP.
- **POP BX**: Retrieves the value from the address pointed to by SP into BX and increments SP by 2.

In this example, `1234H` is pushed onto the stack from the AX register, and then it is popped back into the BX register. The stack pointer adjusts accordingly to reflect these operations.

---

## Sample Code For Understanding: 🔥

Here’s a simple "PUSH & POP Instructions" operation program written in assembly language for TASM:

```assembly
; @author: Avinash Yadav
; @file-name: Lecture-12.asm

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;    PUSH and POP Example   ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Step 1: Load Immediate Values into AX and BX
; ------------------------------------------------------------
; Move the hexadecimal value 1234H into the AX register.
; AX is often used as a general-purpose accumulator register.
MOV AX, 1234H

; Move the hexadecimal value 0F454H into the BX register.
; BX is another general-purpose register, often used to hold base addresses or data.
MOV BX, 0F454H

; Step 2: Use the Stack with PUSH and POP
; ------------------------------------------------------------
; Push the value in AX onto the stack.
; The stack is a Last-In-First-Out (LIFO) structure in memory.
; When we push AX onto the stack, the value 1234H is stored at the memory location
; pointed to by the current stack pointer (SP). The SP register is automatically decremented.
PUSH AX

; Push the value in BX onto the stack.
; The value 0F454H is now pushed onto the stack, and the stack pointer is further decremented.
PUSH BX

; Pop the top value from the stack into the CX register.
; Since the stack operates in a LIFO manner, the value that was last pushed (BX = 0F454H)
; is now popped off the stack and moved into the CX register. The SP register is incremented accordingly.
POP CX

; Step 3: Halt the Program
; ------------------------------------------------------------
; Halt the execution of the program.
; This instruction stops the CPU from executing further instructions,
; putting it in a halted state. The program execution ends here.
HLT

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;  Detailed Explanation:
;  ----------------------
;  - AX, BX, CX: General-purpose registers in the 8086 microprocessor.
;       - AX: Accumulator register (16-bit).
;       - BX: Base register (16-bit), often used for data storage or base addresses.
;       - CX: Count register (16-bit), often used in loop and string operations.
;  - PUSH: The PUSH instruction saves the value of the specified register onto the stack.
;          The stack pointer (SP) is decremented, and the value is stored in memory.
;  - POP: The POP instruction retrieves the last value pushed onto the stack and stores it in the specified register.
;         The stack pointer (SP) is incremented after the value is popped.
;  - HLT: The HLT instruction stops the CPU until a reset or external interrupt occurs.
;
; This code performs the following operations:
; 1. Loads 1234H into AX and 0F454H into BX.
; 2. Pushes the value of AX (1234H) onto the stack.
; 3. Pushes the value of BX (0F454H) onto the stack.
; 4. Pops the top value from the stack (which was BX) into the CX register.
; 5. Halts the execution of the program.
```

---

![PUSH & POP Instructions in 8086 Microprocessor](<./Assests/1PUSH & POP Instructions in 8086 Microprocessor.png>) <br>
![PUSH & POP Instructions in 8086 Microprocessor](<./Assests/2PUSH & POP Instructions in 8086 Microprocessor.png>) <br>
![PUSH & POP Instructions in 8086 Microprocessor](<./Assests/3PUSH & POP Instructions in 8086 Microprocessor.png>) <br>
![PUSH & POP Instructions in 8086 Microprocessor](<./Assests/4PUSH & POP Instructions in 8086 Microprocessor.png>) <br>
![PUSH & POP Instructions in 8086 Microprocessor](<./Assests/5PUSH & POP Instructions in 8086 Microprocessor.png>) <br>
![PUSH & POP Instructions in 8086 Microprocessor](<./Assests/6PUSH & POP Instructions in 8086 Microprocessor.png>) <br>
![PUSH & POP Instructions in 8086 Microprocessor](<./Assests/7PUSH & POP Instructions in 8086 Microprocessor.png>) <br><br>

---

---
