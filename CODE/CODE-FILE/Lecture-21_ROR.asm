; @author: Avinash Yadav
; @file-name: Lecture-21.asm

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Rotate Right (ROR) Operation ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Step 1: Load Immediate Value into AX
; ------------------------------------------------------------
; Move the hexadecimal value 9E78H into the AX register.
; AX is a general-purpose 16-bit register.
; Binary representation of 9E78H is: 1001 1110 0111 1000
MOV AX, 9E78H   ; 1001 1110 0111 1000

; Step 2: Load Rotate Count into CL
; ------------------------------------------------------------
; Move the value 03H into the CL register.
; CL is the lower 8 bits of the CX register and is often used to store the count for rotate and shift instructions.
MOV CL, 03H

; Step 3: Perform Rotate Right (ROR) Operation
; ------------------------------------------------------------
; Rotate the bits in AX to the right by the number of positions specified in CL.
; The bits that are rotated out on the right are reintroduced on the left side.
; 
; Initial AX (before rotation): 1001 1110 0117 1000
; Step-by-step rotation process:
; 1. Rotate right by 1 bit:
;    - 0100 1111 0011 1100
; 2. Rotate right by 1 more bit:
;    - 0010 0111 1001 1110
; 3. Rotate right by 1 more bit:
;    - 0001 0011 1100 1111  => AX = 13CFH
ROR AX, CL      ; Final AX value: 13CFH

; Step 4: Halt the Program
; ------------------------------------------------------------
; Halt the execution of the program.
HLT

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;  Detailed Explanation:
;  ----------------------
;  - AX: Accumulator register (16-bit), used for various operations.
;  - CL: The lower 8 bits of the CX register, commonly used for rotate/shift count.
;  - ROR: The ROR (Rotate Right) instruction rotates the bits in a register to the right. 
;         The bits shifted out from the rightmost position are placed back in the leftmost positions.
;  - HLT: The HLT instruction stops the CPU until a reset or external interrupt occurs.
; 
; This code performs the following operations:
; 1. Loads 9E78H into AX and 03H into CL.
; 2. Rotates the bits in AX to the right by 3 positions.
; 3. The result of the rotation is stored back in AX, which is 13CFH.
; 4. The program halts after the rotation.
