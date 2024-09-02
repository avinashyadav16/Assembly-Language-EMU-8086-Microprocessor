# MOVSW STRING Instruction 📜

## Overview 📝

The `MOVSW` (Move String Word) instruction is used in assembly language to copy a word (16-bit value) from a memory location in the Data Segment (DS) to a memory location in the Extra Segment (ES). This instruction is particularly useful for moving data that is two bytes (a word) in size from one set of consecutive memory locations to another.

## Instruction Format 💻

```assembly
MOVSW
```

- `MOVSW`: Moves a word (16-bit value) from the memory location addressed by `DS:SI` to the memory location addressed by `ES:DI`.

## Register Involvement:

- `SI` (**Source Index**): Points to the source memory location in the Data Segment (`DS`).
- `DI` (**Destination Index**): Points to the destination memory location in the Extra Segment (`ES`).
- `DS`: The Data Segment register containing the segment part of the source address.
- `ES`: The Extra Segment register containing the segment part of the destination address.

## Example 🧩

### Memory Setup:

![MOVSW STRING Instruction](<./Assests/1MOVSW STRING Instruction.png>) <br><br>

```plaintext
Source Segment (DS) Memory:
02000H - 7A54H
02002H - 7A8BH
02004H - 78F4H

Destination Segment (ES) Memory:
03000H - ????   ; Initially unknown
03002H - ????
03004H - ????
```

### Assembly Code:

```assembly
MOV AX, 0200H       ; Load segment 0200H into AX
MOV DS, AX          ; Move AX into DS (Source Segment)

MOV AX, 0300H       ; Load segment 0300H into AX
MOV ES, AX          ; Move AX into ES (Destination Segment)

MOV DS:[0000], 7A54H  ; Load 7A54H into memory at DS:[0000]
MOV DS:[0002], 7A8BH  ; Load 7A8BH into memory at DS:[0002]
MOV DS:[0004], 78F4H  ; Load 78F4H into memory at DS:[0004]

MOVSW               ; Move word from DS:[SI] to ES:[DI]
MOVSW               ; Move next word from DS:[SI] to ES:[DI]
MOVSW               ; Move next word from DS:[SI] to ES:[DI]

HLT                 ; Halt the program
```

## Explanation 🔍

1. **Segment Initialization**:

   - `MOV AX, 0200H`: Load the segment value `0200H` into `AX`.
   - `MOV DS, AX`: Set `DS` to point to segment `0200H`.
   - `MOV AX, 0300H`: Load the segment value `0300H` into `AX`.
   - `MOV ES, AX`: Set `ES` to point to segment `0300H`.

2. **Loading Values into Source Segment (DS)**:

   - `MOV DS:[0000], 7A54H`: Store the value `7A54H` at memory location `02000H`.
   - `MOV DS:[0002], 7A8BH`: Store the value `7A8BH` at memory location `02002H`.
   - `MOV DS:[0004], 78F4H`: Store the value `78F4H` at memory location `02004H`.

3. Executing MOVSW:
   - 1st `MOVSW`: Moves the word `7A54H` from `DS:[SI]` (02000H) to `ES:[DI]` (03000H).
   - 2nd `MOVSW`: Moves the word `7A8BH` from `DS:[SI]` (02002H) to `ES:[DI]` (03002H).
   - 3rd `MOVSW`: Moves the word `78F4H` from `DS:[SI]` (02004H) to `ES:[DI]` (03004H).

## Memory State After Execution:

```plaintext
Source Segment (DS) Memory:
02000H - 7A54H
02002H - 7A8BH
02004H - 78F4H

Destination Segment (ES) Memory:
03000H - 7A54H
03002H - 7A8BH
03004H - 78F4H
```

![MOVSW STRING Instruction](<./Assests/2MOVSW STRING Instruction.png>) <br>
![MOVSW STRING Instruction](<./Assests/3MOVSW STRING Instruction.png>) <br>
![MOVSW STRING Instruction](<./Assests/4MOVSW STRING Instruction.png>) <br><br>

## Remark Point 🛠️

- `MOVSW` is essential for copying word-sized (16-bit) data between memory locations, particularly in string or array operations.
- **Efficient Data Handling**: MOVSW helps in efficient data transfer when dealing with larger data sizes than bytes.
- **Segmented Memory Operations**: The instruction is crucial in scenarios involving segmented memory models, common in x86 architecture.

---

---

- 🚀 **`Understanding the MOVSW instruction is vital for efficiently managing word-sized data transfers in assembly language, particularly in complex data manipulation tasks.`**

---

---

## Sample Code For Understanding: 🔥

Here’s a simple "MOVSW STRING Instruction" operation program written in assembly language for TASM:

```assembly
; @author: Avinash Yadav
; @file-name: Lecture-29.asm

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;   Moving 16-bit Data Using MOVSW Instruction  ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

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
```
