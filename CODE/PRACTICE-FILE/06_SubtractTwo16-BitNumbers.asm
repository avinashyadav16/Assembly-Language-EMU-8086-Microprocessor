.MODEL SMALL
.STACK 100H

.DATA
    NUM1 DW 1234H       ; First 16-bit number
    NUM2 DW 00A5H       ; Second 16-bit number
    RESULT DW ?         ; To store the result

.CODE
MAIN PROC FAR
    MOV AX, @DATA   ; Initialize data segment
    MOV DS, AX      ; Move the data segment address to DS
    MOV AX, NUM1    ; Load the first 16-bit number into AX
    SUB AX, NUM2    ; Subtract the second 16-bit number from AX
    MOV RESULT, AX  ; Store the result in RESULT
    MOV AH, 4CH     ; Terminate the program
    INT 21H         ; DOS interrupt to exit the program
MAIN ENDP
END MAIN
