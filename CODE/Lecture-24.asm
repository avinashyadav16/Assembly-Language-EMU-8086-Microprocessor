; @author: Avinash Yadav
; @file-name: Lecture-24.asm

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Shift Left (SHL) Operation ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Step 1: Load Immediate Value into AX
; ------------------------------------------------------------
; Move the hexadecimal value 7FA4H into the AX register.
; AX is a general-purpose 16-bit register.
; Binary representation of 7FA4H is: 0111 1111 1010 0100
MOV AX, 7FA4H   ; 0111 1111 1010 0100

; Step 2: Load Shift Count into CL
; ------------------------------------------------------------
; Move the value 02H into the CL register.
; CL is the lower 8 bits of the CX register and is often used to store the count for shift instructions.
MOV CL, 02H     ; Shift by 2 positions

; Step 3: Perform Shift Left (SHL) Operation
; ------------------------------------------------------------
; Shift the bits in AX to the left by 2 positions.
; 
; Initial AX (before shift): 0111 1111 1010 0100
; 
; Step-by-step shifting process:
; 1. Shift left by 1 position:
;    - _111 1111 1010 0100  => 1111 1110 1001 0000
; 2. Shift left by another position:
;    - 1111 1110 1001 0000  => 1111 1110 1001 0000  => Final AX = FE90H

SHL AX, CL      ; Final AX value: FE90H

; Step 4: Halt the Program
; ------------------------------------------------------------
; Halt the execution of the program.
HLT

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;  Detailed Explanation:
;  ----------------------
;  - AX: Accumulator register (16-bit), used for various operations.
;  - CL: The lower 8 bits of the CX register, commonly used for shift/rotate count.
;  - SHL: The SHL (Shift Left) instruction shifts the bits in a register to the left by the specified number of positions. 
;         Zeros are filled in from the right as bits are shifted out.
;  - HLT: The HLT instruction stops the CPU until a reset or external interrupt occurs.
; 
; This code performs the following operations:
; 1. Loads 7FA4H into AX.
; 2. Shifts the bits in AX to the left by 2 positions.
; 3. The result of the shift is stored back in AX, which is FE90H.
; 4. The program halts after the shift.
