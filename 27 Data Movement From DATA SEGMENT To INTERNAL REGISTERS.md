# Moving Data From DATA SEGMENT To INTERNAL REGISTERS 🗂️

## Overview 📝

When working with the 8086 microprocessor, you often need to move data from a specific memory location in the Data Segment (DS) to an internal register. Since the 8086 microprocessor is 16-bit and addresses in memory are 20-bit, moving data from memory to a register involves using both the Data Segment register (DS) and an offset register like the Source Index (SI).

## Memory Layout 🗄️

Consider the following memory setup:

![DATA SEGMENT To INTERNAL REGISTERS](<./Assests/1DATA SEGMENT To INTERNAL REGISTERS.png>) <br>

```plaintext
Memory:
03000H - 45H
03001H - 2FH
```

- Memory addresses are 20-bit, and the microprocessor is 16-bit, so we need to use both the Data Segment (DS) and an offset register (SI) to access these memory locations.

## Logical Address Formation 🧮

To access the memory location `03000H`, we use a combination of the Data Segment (DS) and Source Index (SI) registers:

- The logical address will be: `DS:SI`, which translates to `0300H:0000H`.

### Steps to Calculate the Physical Address:

```plaintext
DS:SI = 0300H:0000H

Physical Address Calculation:
⇒ Physical Address = DS * 10H + SI
⇒ 0300H * 10H + 0000H
⇒ 03000H
```

## Data Movement 🚚

Since the Data Segment register is not user-accessible directly (i.e., you cannot move values directly into DS), we need to load it via a general-purpose register like AX.

## Assembly Code Example 🧩

```assembly
MOV AX, 0300H       ; Load the segment value into AX
MOV DS, AX          ; Move the value from AX into DS register
MOV CX, DS:[SI]     ; Move the value from memory (DS:SI) into CX
```

## Explanation 🔍

- `MOV AX, 0300H`: Loads the value `0300H` into the AX register.
- `MOV DS, AX`: Moves the value in AX (`0300H`) into the DS register. Now DS points to the segment `0300H`.
- `MOV CX, DS:[SI]`: Moves the value at memory location `03000H` (since `SI` is `0000H` here) into the CX register.

### Result in Registers:

- The memory location `03000H` contains `45H`.
- Since `CX` is a 16-bit register, it will store the value as `00 45H` where:
  - `CH` (upper 8 bits) = `00`
  - `CL` (lower 8 bits) = `45H`

Thus, after execution, `CX` = `0045H`.

## Alternate Method Using DL Register 🧩

```assembly
MOV DL, DS:[SI]     ; Move the value from memory (DS:SI) into DL
```

- `MOV DL, DS:[SI]`: Moves the 8-bit value from memory location `03000H` into the `DL` register.

## Explanation 🔍

- Since both the memory data (`45H`) and `DL` register are 8-bit, no additional bits are added, and the result is directly `DL = 45H`.

## Remark Point 🛠️

- **Understanding the combination of segment and offset registers is essential for accessing memory locations beyond the 16-bit limit of the 8086 microprocessor.**
- **Using `MOV` instructions carefully allows you to manipulate data between memory and internal registers efficiently.**

---

---

- 🚀 **`This method of accessing memory is crucial for effective memory management and data handling in assembly language programming.`**

---

---

## Sample Code For Understanding: 🔥

Here’s a simple "Moving Data From DATA SEGMENT To INTERNAL REGISTERS" operation program written in assembly language for TASM:

```assembly
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
```
