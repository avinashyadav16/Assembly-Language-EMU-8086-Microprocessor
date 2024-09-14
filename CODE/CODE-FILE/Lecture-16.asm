; @author: Avinash Yadav
; @file-name: Lecture-16.asm

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;        NOT Operation      ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Step 1: Load Immediate Value into AX
; ------------------------------------------------------------
; Move the hexadecimal value 45A8H into the AX register.
; AX is a general-purpose register. The binary representation of 45A8H is:
; 0100 0101 1010 1000
MOV AX, 45A8H   

; Step 2: Perform the NOT Operation
; ------------------------------------------------------------
; Perform a bitwise NOT operation on AX.
; The NOT operation inverts each bit in the operand.
;  - A 0 becomes 1.
;  - A 1 becomes 0.
; 
; The binary representation of AX before the NOT operation:
;    AX: 0100 0101 1010 1000 (45A8H)
; 
; After applying the NOT operation:
;    AX: 1011 1010 0101 0111 (BA57H)
;
; The result, BA57H, is stored back in the AX register.
NOT AX       

; Step 3: Halt the Program
; ------------------------------------------------------------
; Halt the execution of the program.
; This instruction stops the CPU from executing further instructions, 
; putting it in a halted state. The program execution ends here.
HLT             

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;  Detailed Explanation:
;  ----------------------
;  - AX: Accumulator register (16-bit), used for various operations in the 8086 microprocessor.
;  - NOT: The NOT instruction performs a bitwise logical NOT on the operand.
;         It inverts each bit in the register or memory location.
;  - HLT: The HLT instruction stops the CPU until a reset or external interrupt occurs.
; 
; This code performs the following operations:
; 1. Loads 45A8H into AX.
; 2. Inverts each bit in AX using the NOT operation, resulting in BA57H, which is stored back in AX.
; 3. Halts the execution of the program.
