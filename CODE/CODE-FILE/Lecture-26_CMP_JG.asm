; @author: Avinash Yadav
; @file-name: Lecture-26.asm

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;   CMP and Conditional Jump (JG) Operation  ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Step 1: Load Immediate Values into AX and BX
; ------------------------------------------------------------
; Move the hexadecimal value 1235H into the AX register.
; AX is a general-purpose 16-bit register.
MOV AX, 1235H    ; AX = 1235H

; Move the hexadecimal value 1234H into the BX register.
; BX is another general-purpose 16-bit register.
MOV BX, 1234H    ; BX = 1234H

; Step 2: Compare AX and BX
; ------------------------------------------------------------
; Compare the value in AX with the value in BX.
; The CMP instruction subtracts the source operand (BX) from the destination operand (AX) and sets the CPU flags based on the result.
; However, it does not store the result; it only affects the flags.
CMP AX, BX

; Step 3: Conditional Jump (JG) Based on the Comparison
; ------------------------------------------------------------
; Jump to the label ABC if the result of the CMP instruction indicates that AX is greater than BX.
; JG (Jump if Greater) checks the flags: it jumps if the result was positive and not equal (i.e., AX > BX).
JG ABC            ; If AX > BX, jump to label ABC

; Step 4: Move BX into CX if AX is not greater than BX
; ------------------------------------------------------------
; If AX is not greater than BX, this instruction is executed.
; Move the value in BX into the CX register.
MOV CX, BX        ; CX = BX (CX = 1234H if AX <= BX)

; Halt the execution of the program.
HLT

; Step 5: Label ABC - Move AX into CX if AX is greater than BX
; ------------------------------------------------------------
; The program execution jumps here if AX was greater than BX.
ABC:
; Move the value in AX into the CX register.
MOV CX, AX        ; CX = AX (CX = 1235H if AX > BX)

; Halt the execution of the program.
HLT

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;  Detailed Explanation:
;  ----------------------
;  - AX, BX, CX: General-purpose registers in the 8086 microprocessor.
;  - CMP: Compares the destination operand with the source operand by performing a subtraction, but does not store the result.
;         It only affects the flags (Zero Flag, Sign Flag, Overflow Flag, etc.).
;  - JG: Jump if Greater. This instruction causes a jump to the specified label if the previous CMP instruction indicates that the destination operand is greater than the source operand.
;  - HLT: The HLT instruction stops the CPU until a reset or external interrupt occurs.
; 
; This code performs the following operations:
; 1. Loads 1235H into AX and 1234H into BX.
; 2. Compares AX with BX.
; 3. If AX is greater than BX, it jumps to label ABC and moves AX into CX.
; 4. If AX is not greater than BX, it moves BX into CX.
; 5. The program halts after these operations.
