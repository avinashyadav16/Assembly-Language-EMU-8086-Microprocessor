; @author: Avinash Yadav
; @file-name: Lecture-29.asm

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;   Moving 16-bit Data Using MOVSW Instruction  ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Step 1: Initialize Data Segment (DS) and Extra Segment (ES)
; ------------------------------------------------------------
; Move the hexadecimal value 0200H into the AX register.
; This value will be used to initialize the Data Segment (DS).
MOV AX, 0200H      ; AX = 0200H

; Move the value in AX to the Data Segment (DS) register.
; DS now points to segment 0200H.
MOV DS, AX         ; DS = 0200H

; Move the hexadecimal value 0300H into the AX register.
; This value will be used to initialize the Extra Segment (ES).
MOV AX, 0300H      ; AX = 0300H

; Move the value in AX to the Extra Segment (ES) register.
; ES now points to segment 0300H.
MOV ES, AX         ; ES = 0300H

; Step 2: Store Data into Memory Using Direct Addressing
; ------------------------------------------------------------
; Store the 16-bit value 7A54H at the memory location DS:0000.
; The data at DS:0000 will be 7A54H.
MOV DS:[0000], 7A54H   ; DS:0000 = 7A54H

; Store the 16-bit value 7A8BH at the memory location DS:0002.
; The data at DS:0002 will be 7A8BH.
MOV DS:[0002], 7A8BH   ; DS:0002 = 7A8BH

; Store the 16-bit value 78F4H at the memory location DS:0004.
; The data at DS:0004 will be 78F4H.
MOV DS:[0004], 78F4H   ; DS:0004 = 78F4H

; Step 3: Move Data from DS to ES Using MOVSW Instruction
; ------------------------------------------------------------
; The MOVSW instruction moves the 16-bit data from the memory location
; pointed to by DS:SI to the memory location pointed to by ES:DI.
; By default, SI and DI are automatically incremented by 2 after each operation.

; Move the first 16-bit value from DS:0000 to ES:0000.
MOVSW

; Move the second 16-bit value from DS:0002 to ES:0002.
MOVSW

; Move the third 16-bit value from DS:0004 to ES:0004.
MOVSW

; Step 4: Halt the Execution
; ------------------------------------------------------------
; Halt the execution of the program (stop the CPU).
HLT

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;  Detailed Explanation:
;  ----------------------
;  - AX: General-purpose 16-bit register used to load segment addresses.
;  - DS: Data Segment register, used to point to the data segment.
;  - ES: Extra Segment register, used to point to the destination segment for string operations.
;  - MOVSW: Moves a 16-bit word from the source segment (pointed to by DS:SI) to the destination segment (pointed to by ES:DI).
;           It automatically increments SI and DI by 2 after each move operation.
;  - HLT: Stops the CPU until a reset or external interrupt occurs.
; 
; This code performs the following operations:
; 1. Initializes DS to 0200H and ES to 0300H.
; 2. Stores three 16-bit values (7A54H, 7A8BH, and 78F4H) into the memory locations DS:0000, DS:0002, and DS:0004.
; 3. Moves these values from the source segment (DS) to the destination segment (ES) using the MOVSW instruction.
; 4. The program halts after these operations.
