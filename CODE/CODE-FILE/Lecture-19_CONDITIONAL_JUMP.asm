; @author: Avinash Yadav
; @file-name: Lecture-19.asm

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Conditional Jump with JZ  ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Step 1: Load Immediate Values into AX and BX
; ------------------------------------------------------------
; Move the hexadecimal value 1234H into the AX register.
; AX is a general-purpose register.
MOV AX, 1234H

; Move the same hexadecimal value 1234H into the BX register.
; BX is another general-purpose register.
MOV BX, 1234H

; Step 2: Perform XOR Operation
; ------------------------------------------------------------
; Perform a bitwise XOR operation between AX and BX.
; XOR compares each bit of the two registers:
; - If the bits are the same, the result is 0.
; - If the bits are different, the result is 1.
; 
; Since AX and BX hold the same value (1234H), the result of XOR will be 0.
; Therefore, AX will be set to 0000H, and the Zero Flag (ZF) will be set.
XOR AX, BX     ; The result will be zero (AX = 0000H), ZF = 1

; Step 3: Conditional Jump with JZ
; ------------------------------------------------------------
; The JZ (Jump if Zero) instruction checks the Zero Flag.
; If the Zero Flag is set (ZF = 1), it means the result of the previous operation was zero.
; If so, the program jumps to the label ABC. 
; Otherwise, it continues with the next instruction (MOV CX, 1234H).
JZ ABC         ; Conditional jump if Zero Flag is set (ZF = 1)

; This instruction will be skipped if the jump occurs.
MOV CX, 1234H

; Halt the execution of the program.
HLT

; Step 4: Continue Execution from Label ABC
; ------------------------------------------------------------
ABC:
; If the jump occurred, execution continues here.

; Move the hexadecimal value 1234H into the DX register.
; DX is another general-purpose register.
MOV DX, 1234H

; Halt the execution of the program.
HLT

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;  Detailed Explanation:
;  ----------------------
;  - AX, BX, CX, DX: General-purpose registers in the 8086 microprocessor.
;       - AX: Accumulator register (16-bit), used for various operations.
;       - BX: Base register (16-bit).
;       - CX: Count register (16-bit).
;       - DX: Data register (16-bit).
;  - XOR: The XOR instruction performs a bitwise exclusive OR operation between two registers.
;  - JZ: The JZ (Jump if Zero) instruction checks the Zero Flag (ZF) and jumps to a specified label if ZF is set.
;  - HLT: The HLT instruction stops the CPU until a reset or external interrupt occurs.
; 
; This code performs the following operations:
; 1. Loads 1234H into AX and BX.
; 2. Performs a bitwise XOR between AX and BX, which results in zero.
; 3. The Zero Flag is set because the result is zero.
; 4. The JZ instruction checks the Zero Flag and jumps to label ABC if it's set.
; 5. If the jump occurs, the value 1234H is loaded into DX, and the program halts.
