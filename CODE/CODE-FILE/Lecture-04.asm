; @author: Avinash Yadav
; @file-name: Lecture-04.asm

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;      SUB Operation       ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Move the hexadecimal value 0CH (12 in decimal) into the higher 8 bits of the AX register (AH).
MOV AH, 0CH
; Move the hexadecimal value 08H (8 in decimal) into the BL register.
MOV BL, 08H


; Subtract the value in BL (08H) from the value in AH (0CH) and store the result in AH.
SUB AH, BL 


; Halt the execution of the program (stop the CPU).
HLT        



; Explanation:
; - AH: The higher 8-bit part of the AX register.
; - BL: The lower 8-bit part of the BX register.
; - SUB: Subtracts the source value from the destination value and stores the result in the destination.
; - HLT: Stops the CPU until a reset or interrupt occurs.

; This code performs the following operations:
; - It loads 0CH (12 in decimal) into AH.
; - It loads 08H (8 in decimal) into BL.
; - Then it subtracts 08H from 0CH, resulting in 04H (4 in decimal), and stores the result in AH.
; - Finally, it halts the execution.