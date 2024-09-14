; @author: Avinash Yadav
; @file-name: Lecture-25.asm

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Arithmetic Shift Right (SAR) Operation ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Step 1: Load Immediate Value into AX
; ------------------------------------------------------------
; Move the hexadecimal value 0BFA4H into the AX register.
; AX is a general-purpose 16-bit register.
; Binary representation of 0BFA4H is: 1011 1111 1010 0100
MOV AX, 0BFA4H   ; 1011 1111 1010 0100

; Step 2: Load Shift Count into CL
; ------------------------------------------------------------
; Move the value 02H into the CL register.
; CL is the lower 8 bits of the CX register and is often used to store the count for shift instructions.
MOV CL, 02H     ; Shift by 2 positions

; Step 3: Perform Arithmetic Shift Right (SAR) Operation
; ------------------------------------------------------------
; Shift the bits in AX to the right by 2 positions with sign extension.
; 
; Initial AX (before shift): 1011 1111 1010 0100
; 
; Step-by-step shifting process:
; 1. Shift right by 1 position:
;    - 1101 1111 1101 0010  => The leftmost bit (1) is replicated to fill in the left side.
; 2. Shift right by another position:
;    - 1110 1111 1110 1001  => Final AX = EFE9H

SAR AX, CL      ; Final AX value: EFE9H

; Step 4: Halt the Program
; ------------------------------------------------------------
; Halt the execution of the program.
HLT

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;  Detailed Explanation:
;  ----------------------
;  - AX: Accumulator register (16-bit), used for various operations.
;  - CL: The lower 8 bits of the CX register, commonly used for shift/rotate count.
;  - SAR: The SAR (Arithmetic Shift Right) instruction shifts the bits in a register to the right by the specified number of positions.
;         The sign bit (leftmost bit) is replicated to fill in the left side, preserving the sign of the number.
;  - HLT: The HLT instruction stops the CPU until a reset or external interrupt occurs.
; 
; This code performs the following operations:
; 1. Loads 0BFA4H into AX.
; 2. Shifts the bits in AX to the right by 2 positions with sign extension.
; 3. The result of the shift is stored back in AX, which is EFE9H.
; 4. The program halts after the shift.
