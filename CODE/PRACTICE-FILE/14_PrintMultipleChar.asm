.MODEL SMALL          ; Define the memory model
.STACK 100H           ; Define the stack size
.DATA                 ; Start of the data segment

message DB 'Hello, World!$' ; Define the message to print, '$' is used as a string terminator

.CODE                 ; Start of the code segment
MAIN PROC             ; Start of the main procedure

    MOV AX, @DATA     ; Load the address of the data segment
    MOV DS, AX        ; Move it into DS to initialize data segment
    
    ; Print each character in the string
    LEA DX, message   ; Load the address of 'message' into DX
    MOV AH, 9         ; DOS function 9 for printing a string terminated by '$'
    INT 21H           ; Call DOS interrupt 21h to print the string
    
    ; Exit the program
    MOV AH, 4CH       ; DOS function 4Ch for program termination
    INT 21H           ; Call DOS interrupt 21h to exit

MAIN ENDP             ; End of main procedure
END MAIN              ; End of program
