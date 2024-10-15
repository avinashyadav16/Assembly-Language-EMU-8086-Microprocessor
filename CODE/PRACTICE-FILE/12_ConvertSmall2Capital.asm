.MODEL SMALL          ; Sets the memory model to "small"
.STACK 100H           ; Sets the size of the program stack to 256 bytes (100h in hexadecimal)
.DATA                 ; Indicates the start of the data segment

.CODE                 ; Indicates the start of the code segment
MAIN PROC             ; Starts the "main" procedure
    
    ; Read a character from the keyboard
    MOV AH, 1         ; Move the value 1 into the AH register (AH is used for input/output operations)
    INT 21H           ; Call the DOS interrupt 21h, which reads a character into the AL register
    
    ; Convert character to uppercase
    MOV DL, AL        ; Move the value in the AL register (character read from keyboard) into the DL register
    SUB DL, 32        ; Subtract 32 from the value in the DL register (which converts a lowercase letter to 
                      ; uppercase in ASCII)
    
    ; Display the converted character
    MOV AH, 2         ; Move the value 2 into the AH register (indicates the "print character" function)
    INT 21H           ; Call the DOS interrupt 21h, which prints the character in the DL register
    
    ; Exit the program
    MOV AH, 4CH       ; Move the value 4Ch into the AH register (indicates the "terminate program" function)
    INT 21H           ; Call the DOS interrupt 21h, which terminates the program with the return code in the AL register

MAIN ENDP             ; Ends the "main" procedure
END MAIN              ; Indicates the end of the program
