; @author: Avinash Yadav
; @file-name: Lecture-17.asm

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;    Division Operations    ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Example 1: 8-bit Division
; ------------------------------------------------------------

; Step 1: Load Immediate Values into AX and BL
; ------------------------------------------------------------
; Move the hexadecimal value 1389H into the AX register.
; AX is a general-purpose register, used for holding the dividend.
; The decimal equivalent of 1389H is 5001D.
MOV AX, 1389H

; Move the hexadecimal value 19H into the BL register.
; BL is the lower 8-bit part of the BX register, used as the divisor.
; The decimal equivalent of 19H is 25D.
MOV BL, 19H

; Step 2: Perform the Division
; ------------------------------------------------------------
; Perform an 8-bit unsigned division where AX is divided by BL.
; The quotient (Q) will be stored in the AL register, and the remainder (R) will be stored in the AH register.
; 
; 5001D / 25D = 200 (Quotient), remainder 1
;
; Therefore, AL = C8H (200D), AH = 01H (remainder 1).
DIV BL   ; AX / BL => Q = AL, R = AH

; Step 3: Halt the Program
; ------------------------------------------------------------
; Halt the execution of the program.
; This instruction stops the CPU from executing further instructions, 
; putting it in a halted state. The program execution ends here.
HLT

; Explanation for 8-bit Division:
; --------------------------------
; - AX: Accumulator register (16-bit) that holds the dividend before the division.
; - BL: The divisor, which is the lower 8-bit of the BX register.
; - AL: After the division, AL holds the quotient.
; - AH: After the division, AH holds the remainder.
; - DIV: Performs unsigned division.
; - HLT: Stops the CPU until a reset or interrupt occurs.

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; 16-bit Division Operation ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Example 2: 16-bit Division
; ------------------------------------------------------------

; Step 1: Load Immediate Values into DX:AX and CX
; ------------------------------------------------------------
; Move the hexadecimal value 1004H into the DX register.
; The DX register holds the upper 16 bits of the dividend.
MOV DX, 1004H

; Move the hexadecimal value 1004H into the AX register.
; The AX register holds the lower 16 bits of the dividend.
; Together, DX:AX = 10041004H (68783108D).
MOV AX, 1004H   

; Move the hexadecimal value 1234H into the CX register.
; CX is the divisor, with a decimal equivalent of 4660D.
MOV CX, 1234H   

; Step 2: Perform the Division
; ------------------------------------------------------------
; Perform a 16-bit unsigned division where the 32-bit dividend in DX:AX is divided by CX.
; The quotient (Q) will be stored in the AX register, and the remainder (R) will be stored in the DX register.
;
; 68783108D / 4660D = 14760 (Quotient), remainder 848
;
; Therefore, AX = 39B8H (14760D), DX = 0350H (remainder 848).
DIV CX   ; DX:AX / CX => Q = AX, R = DX

; Step 3: Halt the Program
; ------------------------------------------------------------
; Halt the execution of the program.
; This instruction stops the CPU from executing further instructions, 
; putting it in a halted state. The program execution ends here.
HLT

; Explanation for 16-bit Division:
; --------------------------------
; - DX:AX: The 32-bit dividend, where DX holds the upper 16 bits and AX holds the lower 16 bits.
; - CX: The divisor (16-bit register).
; - AX: After the division, AX holds the quotient.
; - DX: After the division, DX holds the remainder.
; - DIV: Performs unsigned division.
; - HLT: Stops the CPU until a reset or interrupt occurs.
