.MODEL SMALL
.STACK 100H

.DATA
    STRING DB 'Avinash Yadav', '$'  ; The string to be printed

.CODE
MAIN PROC FAR
    MOV AX, @DATA               ; Initialize data segment
    MOV DS, AX                  ; Move the address of data segment to DS
    LEA DX, STRING              ; Load the address of the string into DX
    MOV AH, 09H                 ; Function to display string
    INT 21H                     ; DOS interrupt to display string
    MOV AH, 4CH                 ; Function to terminate the program
    INT 21H                     ; DOS interrupt to terminate the program
MAIN ENDP
END MAIN
