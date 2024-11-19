; @author: Avinash Yadav
; @file-name: Lecture-02.asm

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;      MOV Operation       ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Move the hexadecimal value 1234H into the AX register.
MOV AX, 1234H 
; Copy the value from AX into the CX register.
MOV CX, AX     


; Move the hexadecimal value 24H into the DH register.
MOV DH, 24H    
; Copy the value from DH into the BL register.
MOV BL, DH     


; Halt the execution of the program (stop the CPU).
HLT            




; Explanation:

; - AX, CX, DH, BL are registers in the 8086 microprocessor.
;       - AX: Accumulator register (16-bit).
;       - CX: Count register (16-bit).
;       - DH: Higher 8-bit of the DX register.
;       - BL: Lower 8-bit of the BX register.
; - MOV: This instruction copies the data from the source to the destination register.
; - HLT: Halts the CPU until the next hardware reset or interrupt.

; This code simply moves some hexadecimal values into registers and then halts the execution.