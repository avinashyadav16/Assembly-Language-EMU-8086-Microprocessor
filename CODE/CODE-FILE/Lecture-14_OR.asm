; @author: Avinash Yadav
; @file-name: Lecture-14.asm

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;        OR Operation       ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Step 1: Load Immediate Values into AX and CX
; ------------------------------------------------------------
; Move the hexadecimal value 45A8H into the AX register.
; AX is a general-purpose register. The binary representation of 45A8H is:
; 0100 0101 1010 1000
MOV AX, 45A8H   

; Move the hexadecimal value 0E87H into the CX register.
; CX is another general-purpose register. The binary representation of 0E87H is:
; 0000 1110 1000 0111
MOV CX, 0E87H   

; Step 2: Perform the OR Operation
; ------------------------------------------------------------
; Perform a bitwise OR operation between CX and AX.
; The OR operation compares each bit in CX with the corresponding bit in AX.
; If either bit is 1, the result is 1; if both bits are 0, the result is 0.
; Here is the bitwise comparison:
; 
;    AX: 0100 0101 1010 1000 (45A8H)
;    CX: 0000 1110 1000 0111 (0E87H)
;   --------------------------------
; Result: 0100 1111 1010 1111 (4FAFH)
;
; The result, 4FAFH, is stored in the CX register.
OR CX, AX       

; Step 3: Halt the Program
; ------------------------------------------------------------
; Halt the execution of the program.
; This instruction stops the CPU from executing further instructions, 
; putting it in a halted state. The program execution ends here.
HLT             

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;  Detailed Explanation:
;  ----------------------
;  - AX, CX: General-purpose registers in the 8086 microprocessor.
;       - AX: Accumulator register (16-bit), used for various operations.
;       - CX: Count register (16-bit), used in loop operations and as a general-purpose register.
;  - OR: The OR instruction performs a bitwise logical OR between the source and destination operands.
;        The result is stored in the destination operand.
;  - HLT: The HLT instruction stops the CPU until a reset or external interrupt occurs.
; 
; This code performs the following operations:
; 1. Loads 45A8H into AX and 0E87H into CX.
; 2. Performs a bitwise OR between AX and CX, resulting in 4FAFH, which is stored in CX.
; 3. Halts the execution of the program.
