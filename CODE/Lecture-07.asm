; @author: Avinash Yadav
; @file-name: Lecture-07.asm

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;      ADC Operation       ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

MOV BX, 1234H      ; Load the hexadecimal value 1234H into the BX register.
                   ; BX is a 16-bit general-purpose register in the x86 architecture.
                   ; After this instruction, BX = 1234H.

ADD BX, 0F450H     ; Add the hexadecimal value 0F450H to the current value in the BX register.
                   ; BX = BX + 0F450H. The addition does not account for any carry from previous operations.
                   ; If there's a carry-out from the least significant 16 bits, it is ignored at this point.
                   ; After this instruction, BX = 1234H + 0F450H = 21784H.

MOV CX, 4502H      ; Load the hexadecimal value 4502H into the CX register.
                   ; CX is another 16-bit general-purpose register, similar to BX.
                   ; After this instruction, CX = 4502H.

ADC BX, CX         ; Add the value in CX (4502H) to BX (currently 21784H) along with the carry flag (CF).
                   ; ADC stands for "Add with Carry". If there was a carry from the previous ADD instruction,
                   ; it adds an extra 1 to the result. 
                   ; BX = BX + CX + CF. If there was no carry, it performs a regular addition.
                   ; After this instruction, BX = 21784H + 4502H + CF.

HLT                ; Halt the processor.
                   ; This instruction stops the execution of the program.
                   ; The processor will remain in a halted state until it is reset or interrupted.