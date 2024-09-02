; @author: Avinash Yadav
; @file-name: Lecture-12.asm

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;    PUSH and POP Example   ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Step 1: Load Immediate Values into AX and BX
; ------------------------------------------------------------
; Move the hexadecimal value 1234H into the AX register.
; AX is often used as a general-purpose accumulator register.
MOV AX, 1234H   

; Move the hexadecimal value 0F454H into the BX register.
; BX is another general-purpose register, often used to hold base addresses or data.
MOV BX, 0F454H  

; Step 2: Use the Stack with PUSH and POP
; ------------------------------------------------------------
; Push the value in AX onto the stack.
; The stack is a Last-In-First-Out (LIFO) structure in memory. 
; When we push AX onto the stack, the value 1234H is stored at the memory location
; pointed to by the current stack pointer (SP). The SP register is automatically decremented.
PUSH AX         

; Push the value in BX onto the stack.
; The value 0F454H is now pushed onto the stack, and the stack pointer is further decremented.
PUSH BX         

; Pop the top value from the stack into the CX register.
; Since the stack operates in a LIFO manner, the value that was last pushed (BX = 0F454H) 
; is now popped off the stack and moved into the CX register. The SP register is incremented accordingly.
POP CX          

; Step 3: Halt the Program
; ------------------------------------------------------------
; Halt the execution of the program.
; This instruction stops the CPU from executing further instructions, 
; putting it in a halted state. The program execution ends here.
HLT             

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;  Detailed Explanation:
;  ----------------------
;  - AX, BX, CX: General-purpose registers in the 8086 microprocessor.
;       - AX: Accumulator register (16-bit).
;       - BX: Base register (16-bit), often used for data storage or base addresses.
;       - CX: Count register (16-bit), often used in loop and string operations.
;  - PUSH: The PUSH instruction saves the value of the specified register onto the stack.
;          The stack pointer (SP) is decremented, and the value is stored in memory.
;  - POP: The POP instruction retrieves the last value pushed onto the stack and stores it in the specified register.
;         The stack pointer (SP) is incremented after the value is popped.
;  - HLT: The HLT instruction stops the CPU until a reset or external interrupt occurs.
; 
; This code performs the following operations:
; 1. Loads 1234H into AX and 0F454H into BX.
; 2. Pushes the value of AX (1234H) onto the stack.
; 3. Pushes the value of BX (0F454H) onto the stack.
; 4. Pops the top value from the stack (which was BX) into the CX register.
; 5. Halts the execution of the program.
