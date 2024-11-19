; @author: Avinash Yadav
; @file-name: Lecture-10.asm

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;      LOOP Operation       ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

MOV AX, 00H      ; Initialize the AX register with 00H.
                 ; AX = 0000H.

MOV BX, 02H      ; Load the BX register with 02H.
                 ; BX = 0002H.

MOV CX, 02H      ; Load the CX register with 02H.
                 ; CX = 0002H.
                 
ABC: ADD AX, BX  ; Add the value in BX (02H) to AX.
                 ; AX = AX + BX.
                 ; This instruction will be executed twice due to the LOOP instruction below.

LOOP ABC         ; Decrement CX by 1 and jump to the label ABC if CX is not zero.
                 ; Since CX starts at 2, the loop will run twice.
                 ; After the first iteration:
                 ;   - CX = 01H (1 remaining loop).
                 ;   - AX = 0002H (after first ADD).
                 ; After the second iteration:
                 ;   - CX = 00H (loop ends).
                 ;   - AX = 0004H (after second ADD).

HLT              ; Halt the processor.
                 ; The program stops executing here.