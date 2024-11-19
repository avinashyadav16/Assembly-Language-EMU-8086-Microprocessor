.MODEL SMALL
.STACK 100H

.DATA
    NUM1 DB 5AH         ; First 8-bit number
    NUM2 DB 2FH         ; Second 8-bit number
    RESULT DB ?         ; To store the result

.CODE
MAIN PROC FAR
    MOV AX, @DATA   ; Initialize data segment
    MOV DS, AX      ; Move the address of data segment to DS
    MOV AL, NUM1    ; Load the first number into AL
    SUB AL, NUM2    ; Subtract the second number from AL
    MOV RESULT, AL  ; Store the result in RESULT
    MOV AH, 4CH     ; Terminate the program
    INT 21H         ; Call DOS interrupt to exit
MAIN ENDP
END MAIN
