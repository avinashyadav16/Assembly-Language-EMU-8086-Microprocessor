.MODEL SMALL          ; Sets the memory model to "small"
.STACK 100H           ; Sets the size of the program stack to 256 bytes (100h in hexadecimal)
.DATA                 ; Indicates the start of the data segment

.CODE                 ; Indicates the start of the code segment
MAIN PROC             ; Starts the "main" procedure

    ; Display the character 'A'
    MOV DL, 'A'       ; Move the ASCII value of 'A' into the DL register
    MOV AH, 2         ; Move the value 2 into the AH register (indicates the "print character" function)
    INT 21H           ; Call the DOS interrupt 21h, which prints the character in the DL register
    
    ; Exit the program
    MOV AH, 4CH       ; Move the value 4Ch into the AH register (indicates the "terminate program" function)
    INT 21H           ; Call the DOS interrupt 21h, which terminates the program with the return code in the AL register

MAIN ENDP             ; Ends the "main" procedure
END MAIN              ; Indicates the end of the program
