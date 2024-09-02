; @author: Avinash Yadav
; @file-name: Lecture-27.asm

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;    Memory to Register Data Transfer   ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Step 1: Load Segment Address into AX
; ------------------------------------------------------------
; Move the hexadecimal value 0300H into the AX register.
; AX is a general-purpose 16-bit register that will temporarily hold the segment value.
MOV AX, 0300H    ; AX = 0300H

; Step 2: Set Data Segment Register (DS)
; ------------------------------------------------------------
; Move the value from AX into the DS register.
; DS is the data segment register, and setting it allows access to the memory segment starting at 0300H.
MOV DS, AX       ; DS = 0300H, now DS:SI points to the start of the memory segment at 03000H

; Step 3: Move Memory Content to CX Register
; ------------------------------------------------------------
; Move the value stored at the memory location pointed to by DS:SI into the CX register.
; SI (Source Index) is initially 0000H, so DS:SI points to the physical memory address 03000H.
; The MOV CX, DS:[SI] instruction moves the content at that memory location into the CX register.
; Since CX is a 16-bit register, and the data at memory 03000H is 8-bit (45H), 
; the higher byte (CH) will be set to 00H and the lower byte (CL) will be set to 45H.
MOV CX, DS:[SI]  ; CX = 0045H (CH = 00H, CL = 45H)

; Step 4: Optional - Move Memory Content to DL Register
; ------------------------------------------------------------
; Alternatively, move the data from memory (DS:SI) into the DL register.
; DL is an 8-bit register, and since both the data and DL are 8 bits, this operation is straightforward.
MOV DL, DS:[SI]  ; DL = 45H

; Step 5: Halt the Program Execution
; ------------------------------------------------------------
; The HLT instruction stops the CPU until a reset or external interrupt occurs.
HLT

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;  Detailed Explanation:
;  ----------------------
;  - DS:SI (Data Segment:Source Index) forms the logical address used to access memory. 
;  - The physical address is calculated as DS * 16 + SI.
;  - The DS register is used to hold the segment base address, and SI holds the offset.
;  - The MOV AX, 0300H and MOV DS, AX instructions are necessary to load the data segment, 
;    as DS cannot be directly loaded with an immediate value.
;  - MOV CX, DS:[SI] loads the 16-bit register CX with an 8-bit value from memory, 
;    zero-extending the higher byte (CH).
;  - Alternatively, MOV DL, DS:[SI] can be used to load an 8-bit register directly with the data from memory.
; 
; This code performs the following operations:
; 1. Loads the segment address 0300H into AX and sets DS to 0300H.
; 2. Moves the content from memory location 03000H into the CX register.
; 3. Optionally, moves the content from memory location 03000H into the DL register.
; 4. Halts the program execution.
