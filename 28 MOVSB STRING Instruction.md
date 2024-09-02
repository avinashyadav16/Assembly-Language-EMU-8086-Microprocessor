# MOVSB STRING Instruction 📜

## Overview 📝

The `MOVSB` (Move String Byte) instruction is used in assembly language to copy a byte from a memory location in the Data Segment (DS) to a memory location in the Extra Segment (ES). This instruction is particularly useful in string operations where consecutive bytes need to be moved from one memory location to another.

## Instruction Format 💻

```assembly
MOVSB
```

- `MOVSB`: Moves a byte from the memory location addressed by `DS:SI` to the memory location addressed by `ES:DI`.

## Register Involvement: 🚜

- `SI` (**Source Index**): Points to the source memory location in the Data Segment (`DS`).
- `DI` (**Destination Index**): Points to the destination memory location in the Extra Segment (`ES`).
- `DS`: The Data Segment register containing the segment part of the source address.
- `ES`: The Extra Segment register containing the segment part of the destination address.

## Example 🧩

### Memory Setup:

![MOVSB STRING Instruction](<./Assests/2MOVSB STRING Instruction.png>) <br><br>

```plaintext
Source Segment (DS) Memory:
02000H - 52H  ; 'R'
02001H - 74H  ; 't'
02002H - 8AH  ; Some arbitrary value

Destination Segment (ES) Memory:
03000H - ??   ; Initially unknown
03001H - ??
03002H - ??
```

### Assembly Code:

```assembly
MOV AX, 0200H       ; Load segment 0200H into AX
MOV DS, AX          ; Move AX into DS (Source Segment)

MOV AX, 0300H       ; Load segment 0300H into AX
MOV ES, AX          ; Move AX into ES (Destination Segment)

MOV DS:[0000], 52H  ; Load 'R' (52H) into memory at DS:[0000]
MOV DS:[0001], 74H  ; Load 't' (74H) into memory at DS:[0001]
MOV DS:[0002], 8AH  ; Load arbitrary value (8AH) into memory at DS:[0002]

MOVSB               ; Move byte from DS:[SI] to ES:[DI]
MOVSB               ; Move next byte from DS:[SI] to ES:[DI]
MOVSB               ; Move next byte from DS:[SI] to ES:[DI]

HLT                 ; Halt the program
```

## Explanation 🔍

1. **Segment Initialization**:

- `MOV AX, 0200H`: Load the segment value `0200H` into `AX`.
- `MOV DS, AX`: Set `DS` to point to segment `0200H`.
- `MOV AX, 0300H`: Load the segment value `0300H` into `AX`.
- `MOV ES, AX`: Set `ES` to point to segment `0300H`.

2. **Loading Values into Source Segment (DS)**:

- `MOV DS:[0000], 52H`: Store the value `52H` (ASCII 'R') at memory location `02000H`.
- `MOV DS:[0001], 74H`: Store the value `74H` (ASCII 't') at memory location `02001H`.
- `MOV DS:[0002], 8AH`: Store the value `8AH` at memory location `02002H`.

3. **Executing MOVSB**:

- 1st `MOVSB`: Moves the byte `52H` from `DS:[SI]` (02000H) to `ES:[DI]` (03000H).
- 2nd `MOVSB`: Moves the byte `74H` from `DS:[SI]` (02001H) to `ES:[DI]` (03001H).
- 3rd `MOVSB`: Moves the byte `8AH` from `DS:[SI]` (02002H) to `ES:[DI]` (03002H).

### Memory State After Execution:

```plaintext
Source Segment (DS) Memory:
02000H - 52H  ; 'R'
02001H - 74H  ; 't'
02002H - 8AH  ; Value copied

Destination Segment (ES) Memory:
03000H - 52H  ; 'R'
03001H - 74H  ; 't'
03002H - 8AH  ; Value copied
```

![MOVSB STRING Instruction](<./Assests/3MOVSB STRING Instruction.png>) <br>
![MOVSB STRING Instruction](<./Assests/4MOVSB STRING Instruction.png>) <br>
![MOVSB STRING Instruction](<./Assests/5MOVSB STRING Instruction.png>) <br>
![MOVSB STRING Instruction](<./Assests/6MOVSB STRING Instruction.png>) <br><br>

## Remark Point 🛠️

- `MOVSB` is useful for copying consecutive bytes from one memory location to another.
- **String Operations**: Often used in operations involving strings, arrays, or other sequences of data.
- **Efficient Data Transfer**: Facilitates efficient transfer of data between memory locations.

---

---

- 🚀 **`The MOVSB instruction plays a crucial role in memory manipulation operations in assembly language programming, providing a simple yet powerful tool for copying data.`**

---

---

## Sample Code For Understanding: 🔥

Here’s a simple "MOVSB STRING Instruction" operation program written in assembly language for TASM:

```assembly
; @author: Avinash Yadav
; @file-name: Lecture-28.asm

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;    Moving Data Between Memory Segments  ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

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
```
