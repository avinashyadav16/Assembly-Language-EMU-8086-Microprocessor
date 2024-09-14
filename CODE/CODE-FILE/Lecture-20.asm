; @author: Avinash Yadav
; @file-name: Lecture-20.asm

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Rotate Left (ROL) Operation ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Step 1: Load Immediate Value into AX
; ------------------------------------------------------------
; Move the hexadecimal value 124FH into the AX register.
; AX is a general-purpose 16-bit register.
; Binary representation of 124FH is: 0001 0010 0100 1111
MOV AX, 124FH   ; 0001 0010 0100 1111 

; Step 2: Load Rotate Count into CL
; ------------------------------------------------------------
; Move the value 03H into the CL register.
; CL is the lower 8 bits of the CX register and is often used to store the count for rotate and shift instructions.
MOV CL, 03H     

; Step 3: Perform Rotate Left (ROL) Operation
; ------------------------------------------------------------
; Rotate the bits in AX to the left by the number of positions specified in CL.
; The bits that are rotated out on the left are reintroduced on the right side.
; 
; Initial AX (before rotation): 0001 0010 0100 1111
; Step-by-step rotation process:
; 1. Rotate left by 1 bit:
;    - 0010 0100 1001 1110
; 2. Rotate left by 1 more bit:
;    - 0100 1001 0011 1100
; 3. Rotate left by 1 more bit:
;    - 1001 0010 0111 1000  => AX = 9278H
ROL AX, CL      ; Final AX value: 9278H

; Step 4: Halt the Program
; ------------------------------------------------------------
; Halt the execution of the program.
HLT

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;  Detailed Explanation:
;  ----------------------
;  - AX: Accumulator register (16-bit), used for various operations.
;  - CL: The lower 8 bits of the CX register, commonly used for rotate/shift count.
;  - ROL: The ROL (Rotate Left) instruction rotates the bits in a register to the left. 
;         The bits shifted out from the leftmost position are placed back in the rightmost positions.
;  - HLT: The HLT instruction stops the CPU until a reset or external interrupt occurs.
; 
; This code performs the following operations:
; 1. Loads 124FH into AX and 03H into CL.
; 2. Rotates the bits in AX to the left by 3 positions.
; 3. The result of the rotation is stored back in AX, which is 9278H.
; 4. The program halts after the rotation.
