.MODEL SMALL
.STACK 100H

.DATA
    NUM1 DB 25H         ; First number
    NUM2 DB 17H         ; Second number
    RESULT DB ?         ; To store the result

.CODE
MAIN PROC FAR
    MOV AX, @DATA   ; Initialize data segment
    MOV DS, AX      ; Move data segment address to DS
    MOV AL, NUM1    ; Load first number into AL
    ADD AL, NUM2    ; Add second number to AL
    MOV RESULT, AL  ; Store the result in RESULT
    MOV AH, 4CH     ; Prepare to exit the program
    INT 21H         ; Interrupt to terminate the program
MAIN ENDP
END MAIN
