; @author: Avinash Yadav
; @file-name: Lecture-28.asm

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;    Moving Data Between Memory Segments  ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Step 1: Load Segment Address into AX and Set DS
; ------------------------------------------------------------
; Move the hexadecimal value 0200H into the AX register.
; AX is a general-purpose 16-bit register that will temporarily hold the segment value for the Data Segment.
MOV AX, 0200H    ; AX = 0200H

; Move the value from AX into the DS (Data Segment) register.
; This sets up the DS register to point to the memory segment starting at 02000H.
MOV DS, AX       ; DS = 0200H

; Step 2: Load Segment Address into AX and Set ES
; ------------------------------------------------------------
; Move the hexadecimal value 0300H into the AX register.
; AX will now hold the segment value for the Extra Segment.
MOV AX, 0300H    ; AX = 0300H

; Move the value from AX into the ES (Extra Segment) register.
; This sets up the ES register to point to the memory segment starting at 03000H.
MOV ES, AX       ; ES = 0300H

; Step 3: Store Data in the DS Segment
; ------------------------------------------------------------
; Move the hexadecimal value 52H into the memory location DS:[0000].
; This is an example of Direct Memory Addressing Mode where the address is specified directly.
MOV DS:[0000], 52H    ; Memory[02000H] = 52H

; Move the hexadecimal value 74H into the memory location DS:[0001].
MOV DS:[0001], 74H    ; Memory[02001H] = 74H

; Move the hexadecimal value 8AH into the memory location DS:[0002].
MOV DS:[0002], 8AH    ; Memory[02002H] = 8AH

; Step 4: Move Data from DS Segment to ES Segment using MOVSB
; ------------------------------------------------------------
; The MOVSB instruction moves a byte from the memory location pointed to by DS:SI to the memory location pointed to by ES:DI.
; SI (Source Index) is initially 0000H and DI (Destination Index) is also 0000H by default.
; After each MOVSB instruction, SI and DI are automatically incremented to point to the next byte.
MOVSB                ; ES:[DI] = DS:[SI], Moves 52H from DS:[0000] to ES:[0000]

MOVSB                ; ES:[DI] = DS:[SI], Moves 74H from DS:[0001] to ES:[0001]

MOVSB                ; ES:[DI] = DS:[SI], Moves 8AH from DS:[0002] to ES:[0002]

; Step 5: Halt the Program Execution
; ------------------------------------------------------------
; The HLT instruction stops the CPU until a reset or external interrupt occurs.
HLT

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;  Detailed Explanation:
;  ----------------------
;  - DS: Data Segment register, used to point to the segment where data is stored.
;  - ES: Extra Segment register, used as an additional segment for data manipulation.
;  - MOVSB: This instruction moves a byte from the memory location addressed by DS:SI to the memory location addressed by ES:DI.
;           It automatically increments SI and DI after each move operation.
; 
; This code performs the following operations:
; 1. Sets up the DS register to point to memory segment 02000H.
; 2. Sets up the ES register to point to memory segment 03000H.
; 3. Stores the values 52H, 74H, and 8AH in consecutive memory locations in the DS segment.
; 4. Moves these values byte by byte from the DS segment to the ES segment using the MOVSB instruction.
; 5. Halts the program execution.
