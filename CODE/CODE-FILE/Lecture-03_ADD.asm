; @author: Avinash Yadav
; @file-name: Lecture-03.asm

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;      ADD Operation       ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Move the hexadecimal value 1234H into the AX register.
MOV AX, 1234H  
; Move the hexadecimal value 5678H into the BX register.
MOV BX, 5678H  

; Add the value in AX to BX and store the result in BX.
ADD BX, AX     


; Add the hexadecimal value 24H to the higher 8 bits (BH) of the BX register.
ADD BH, 24H    


; Halt the execution of the program (stop the CPU).
HLT            





; Explanation:
; - AX, BX: General-purpose registers in the 8086 microprocessor.
;       - AX: Accumulator register (16-bit).
;       - BX: Base register (16-bit).
; - BH: The higher 8-bit of the BX register.
; - MOV: Copies the value from the source to the destination register.
; - ADD: Adds the source value to the destination value and stores the result in the destination.
; - HLT: Stops the CPU until a reset or interrupt occurs.

; This code performs the following operations:
; 1. It loads 1234H into AX and 5678H into BX.
; 2. It then adds the value in AX to BX.
; 3. After that, it adds 24H to the upper 8 bits of BX (BH).
; 4. Finally, it halts the execution.