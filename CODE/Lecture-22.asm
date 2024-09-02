; @author: Avinash Yadav
; @file-name: Lecture-22.asm

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Rotate Through Carry Left (RCL) Operation ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Step 1: Load Immediate Value into AX
; ------------------------------------------------------------
; Move the hexadecimal value 1234H into the AX register.
; AX is a general-purpose 16-bit register.
; Binary representation of 1234H is: 0001 0010 0011 0100
MOV AX, 1234H     ; 0001 0010 0011 0100

; Step 2: Set the Carry Flag
; ------------------------------------------------------------
; Set the carry flag (CF) to 1.
; The carry flag is used in rotate-through-carry operations.
STC               ; CF = 1

; Step 3: Load Rotate Count into CL
; ------------------------------------------------------------
; Move the value 01H into the CL register.
; CL is the lower 8 bits of the CX register and is often used to store the count for rotate and shift instructions.
MOV CL, 01H

; Step 4: Perform Rotate Through Carry Left (RCL) Operation
; ------------------------------------------------------------
; Rotate the bits in AX to the left by 1 position, including the carry flag (CF) in the rotation.
; 
; Initial AX (before rotation): 0001 0010 0011 0100
; Carry Flag (CF) before rotation: 1
; 
; Step-by-step rotation process:
; 1. CF is added as the least significant bit (LSB): 1000 1001 0011 0100
; 2. Rotate left by 1 bit:
;    - 0010 0100 0110 1001  => AX = 2469H

RCL AX, CL        ; Final AX value: 2469H

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
;  - RCL: The RCL (Rotate Through Carry Left) instruction rotates the bits in a register to the left 
;         by the specified number of positions, including the carry flag (CF) in the rotation.
;  - HLT: The HLT instruction stops the CPU until a reset or external interrupt occurs.
; 
; This code performs the following operations:
; 1. Loads 1234H into AX and sets the carry flag to 1.
; 2. Rotates the bits in AX to the left by 1 position, including the carry flag.
; 3. The result of the rotation is stored back in AX, which is 2469H.
; 4. The program halts after the rotation.
