; @author: Avinash Yadav
; @file-name: Lecture-23.asm

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Rotate Through Carry Right (RCR) Operation ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Step 1: Load Immediate Value into AX
; ------------------------------------------------------------
; Move the hexadecimal value 7FA4H into the AX register.
; AX is a general-purpose 16-bit register.
; Binary representation of 7FA4H is: 0111 1111 1010 0100
MOV AX, 7FA4H    ; 0111 1111 1010 0100

; Step 2: Set the Carry Flag
; ------------------------------------------------------------
; Set the carry flag (CF) to 1.
; The carry flag is used in rotate-through-carry operations.
STC              ; CF = 1

; Step 3: Load Rotate Count into CL
; ------------------------------------------------------------
; Move the value 02H into the CL register.
; CL is the lower 8 bits of the CX register and is often used to store the count for rotate and shift instructions.
MOV CL, 02H      ; Rotate by 2 positions

; Step 4: Perform Rotate Through Carry Right (RCR) Operation
; ------------------------------------------------------------
; Rotate the bits in AX to the right by 2 positions, including the carry flag (CF) in the rotation.
; 
; Initial AX (before rotation): 0111 1111 1010 0100
; Carry Flag (CF) before rotation: 1
; 
; Step-by-step rotation process:
; 1. First Rotation:
;    - CF is added as the most significant bit (MSB): 1 0111 1111 1010 0100
;    - Rotate right by 1 bit:
;      1011 1111 1101 0010  => Intermediate AX = BFD2H
; 2. Second Rotation:
;    - Rotate right by 1 more bit, with LSB moving to CF:
;      0101 1111 1110 1001  => Final AX = 5FE9H

RCR AX, CL       ; Final AX value: 5FE9H

; Step 5: Halt the Program
; ------------------------------------------------------------
; Halt the execution of the program.
HLT

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;  Detailed Explanation:
;  ----------------------
;  - AX: Accumulator register (16-bit), used for various operations.
;  - CL: The lower 8 bits of the CX register, commonly used for rotate/shift count.
;  - STC: Set the carry flag (CF) to 1.
;  - RCR: The RCR (Rotate Through Carry Right) instruction rotates the bits in a register to the right 
;         by the specified number of positions, including the carry flag (CF) in the rotation.
;  - HLT: The HLT instruction stops the CPU until a reset or external interrupt occurs.
; 
; This code performs the following operations:
; 1. Loads 7FA4H into AX and sets the carry flag to 1.
; 2. Rotates the bits in AX to the right by 2 positions, including the carry flag.
; 3. The result of the rotation is stored back in AX, which is 5FE9H.
; 4. The program halts after the rotation.
