.MODEL SMALL
.STACK 100H

.DATA
    STRING DB 'Hello World', '$'   ; The string to be printed, '$' is the string terminator for DOS function 09H

.CODE
MAIN PROC FAR
    MOV AX, @DATA              ; Initialize data segment
    MOV DS, AX                 ; Move the address of data segment to DS
    LEA DX, STRING             ; Load the address of the string into DX
    MOV AH, 09H                ; DOS function to print string
    INT 21H                    ; Call DOS interrupt
    MOV AH, 4CH                ; DOS function to terminate program
    INT 21H                    ; Call DOS interrupt
MAIN ENDP
END MAIN
