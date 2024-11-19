.MODEL SMALL
.STACK 100H

.DATA
    NUM1 DW 1234H       ; First 16-bit number
    NUM2 DW 0A56H       ; Second 16-bit number
    RESULT DW ?         ; To store the result

.CODE
MAIN PROC FAR
    MOV AX, @DATA   ; Initialize data segment
    MOV DS, AX      ; Move data segment address to DS
    MOV AX, NUM1    ; Load first 16-bit number into AX
    ADD AX, NUM2    ; Add second 16-bit number to AX
    MOV RESULT, AX  ; Store the result in RESULT
    MOV AH, 4CH     ; Terminate the program
    INT 21H         ; Interrupt to terminate the program
MAIN ENDP
END MAIN
