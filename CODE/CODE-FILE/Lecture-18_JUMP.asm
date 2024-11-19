; @author: Avinash Yadav
; @file-name: Lecture-18.asm

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;      Jump Operation       ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Step 1: Load Immediate Values into AX and BX
; ------------------------------------------------------------
; Move the hexadecimal value 1234H into the AX register.
; AX is a general-purpose register.
MOV AX, 1234H

; Move the hexadecimal value 3456H into the BX register.
; BX is another general-purpose register.
MOV BX, 3456H

; Step 2: Unconditional Jump to Label ABC
; ------------------------------------------------------------
; The JMP instruction causes an unconditional jump to the label ABC.
; This means the program counter will be set to the address of the label ABC, 
; skipping the next instruction (MOV CX, 3456H) and continuing execution from ABC.
JMP ABC

; This instruction will be skipped because of the JMP above.
MOV CX, 3456H

; Step 3: Continue Execution from Label ABC
; ------------------------------------------------------------
ABC:               
; After the jump, the execution continues here.

; Move the hexadecimal value 5678H into the DX register.
; DX is another general-purpose register.
MOV DX, 5678H

; Step 4: Halt the Program
; ------------------------------------------------------------
; Halt the execution of the program.
; This instruction stops the CPU from executing further instructions, 
; putting it in a halted state. The program execution ends here.
HLT             

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;  Detailed Explanation:
;  ----------------------
;  - AX, BX, CX, DX: General-purpose registers in the 8086 microprocessor.
;       - AX: Accumulator register (16-bit), used for various operations.
;       - BX: Base register (16-bit).
;       - CX: Count register (16-bit), typically used in loop operations.
;       - DX: Data register (16-bit), often used for I/O operations.
;  - JMP: The JMP instruction causes an unconditional jump to a specified label or address.
;  - HLT: The HLT instruction stops the CPU until a reset or external interrupt occurs.
; 
; This code performs the following operations:
; 1. Loads 1234H into AX and 3456H into BX.
; 2. Jumps unconditionally to the label ABC, skipping the instruction to load 3456H into CX.
; 3. Loads 5678H into DX and halts the execution of the program.
