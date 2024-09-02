# Writing Data in the Data Segment of 8086 Microprocessor 🛠️

This README provides a guide on how to write data into the data segment of the 8086 microprocessor, specifically focusing on storing the first five even numbers (0, 2, 4, 6, 8) in memory locations starting at `0300H`.

---

## Data Storage in Memory 📥

### Memory Diagram 🗺️

The memory locations where we want to store the even numbers are as follows:

- `0300H = 0`
- `0301H = 2`
- `0302H = 4`
- `0303H = 6`
- `0304H = 8`

Since these are hexadecimal numbers, they represent 20-bit physical addresses.

### Physical Address Composition 🧮

Physical addresses in the 8086 microprocessor are calculated using the segment base address and offset:

- **Physical Address (PA) = Segment Base Address (SBA) : Offset**
- For data segment, PA is calculated as:
  - **PA = DS:DI**

### Example Calculation ✏️

Given the base address of the data segment as `0300H`, the physical addresses can be calculated as follows:

- **Base Address**: `0300H`
- **Offset**: `0000H`

Therefore, the physical address is:

- **Physical Address**: `0300H:0000H`

---

### Sample Assembly Code Example 📜

Here’s how to store the first five even numbers in the data segment of the 8086 microprocessor:

```assembly
.model small
.data
    EVEN_NUMS DB 0, 2, 4, 6, 8  ; Define the first five even numbers in the data segment

.code
main:
    MOV AX, @data      ; Load data segment address into AX
    MOV DS, AX         ; Move data segment address into DS

    MOV DI, 0300H      ; Set destination index to base address 0300H

    MOV CX, 5          ; Set counter to 5 (number of even numbers)
    LEA SI, EVEN_NUMS  ; Load address of EVEN_NUMS into SI

next_num:
    MOV AL, [SI]       ; Load the current even number into AL
    MOV [DI], AL       ; Store the even number at the memory location
    INC SI             ; Increment SI to the next number
    INC DI             ; Increment DI to the next memory location
    LOOP next_num      ; Loop until all numbers are stored

    HLT                ; Halt the execution

end main
```

**Explanation 🔍**

- `DS`: Data Segment register, holds the base address of the data segment.
- `DI`: Destination Index, used for offset within the data segment.
- `SI`: Source Index, points to the data in the memory.
- `AL`: Accumulator register (low byte) used to temporarily hold the data.
- `CX`: Counter register used for looping.
- `LOOP`: Decrements CX and jumps to the label `next_num` as long as CX is not zero.

In this example, the first five even numbers are defined in the data segment and then stored in the memory locations starting at `0300H.`

## Sample Code For Understanding: 🔥

Here’s a simple "" operation program written in assembly language for TASM:

```assembly
; @author: Avinash Yadav
; @file-name: Lecture-11.asm

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;    WRITING INTO MEMORY   ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Step 1: Load the Data Segment (DS) Register
; ------------------------------------------------------------
; Move the hexadecimal value 0300H into the AX register.
; The AX register is often used as an intermediary for loading values into segment registers like DS.
; The DS register holds the segment address for data. Since direct loading of DS isn't allowed,
; we first load the value into AX and then transfer it to DS.
MOV AX, 0300H

; Move the value from AX to the DS register.
; The DS register is now set to 0300H, meaning all data references using DS will
; use the segment 0300H in memory.
MOV DS, AX

; Step 2: Initialize the Destination Index (DI) Register
; ------------------------------------------------------------
; Set the DI (Destination Index) register to 0000H.
; DI is used to point to a specific memory offset within the segment defined by DS.
; In this case, DI starts at 0000H, pointing to the beginning of the data segment.
MOV DI, 0000H

; Step 3: Initialize the Accumulator (AX) Register
; ------------------------------------------------------------
; Set the AX register to 0000H.
; The AX register is a general-purpose 16-bit register that can be used for arithmetic,
; data movement, and other operations. Here, it starts at 0000H.
MOV AX, 0000H

; Step 4: Set Up the Loop Counter
; ------------------------------------------------------------
; Load the CL register with 05H (which is 5 in decimal).
; The CX register (specifically the lower 8 bits, CL) is used as a loop counter.
; The loop will run as long as CL is greater than 0. In this case, it will run 5 times.
MOV CL, 05H

; Step 5: Begin the Loop
; ------------------------------------------------------------
ABC:
; Move the value in AX into the memory location pointed to by DI.
; The DI register provides the offset within the segment where the data will be stored.
; AX initially contains 0000H, so this value will be stored at the address DS:DI (which is 0300:0000).
; On each iteration, this instruction stores the current value of AX into the memory address DI.
MOV [DI], AX

; Increment the DI register by 1.
; This moves the memory pointer to the next address, so on the next iteration,
; the value in AX will be stored at the next memory location.
; For example, after the first iteration, DI becomes 0001H, so the next value of AX
; will be stored at 0300:0001.
INC DI

; Add 02H to the value in AX.
; This increases the value in AX by 2 on each iteration of the loop.
; The initial value of AX was 0000H, so after the first ADD instruction, AX becomes 0002H.
; On the second iteration, AX will be 0004H, and so on.
ADD AX, 02H

; Decrement the CL register by 1 and check if it's zero.
; If CL is not zero, the loop jumps back to the label ABC and repeats.
; After each loop iteration, CL is decremented by 1. When CL reaches 0, the loop ends.
; This ensures the loop runs exactly 5 times, storing the values 0000H, 0002H, 0004H, 0006H,
; and 0008H at consecutive memory locations.
LOOP ABC

; Step 6: Halt the Program
; ------------------------------------------------------------
; Halt the execution of the program.
; This instruction stops the CPU from executing further instructions,
; putting it in a halted state. The program execution ends here.
HLT

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;  Detailed Explanation:
;  ----------------------
;  - AX, DI, DS: General-purpose registers in the 8086 microprocessor.
;       - AX: Accumulator register, a versatile 16-bit register used for arithmetic and data movement.
;       - DI: Destination Index register, used for memory addressing within a segment.
;       - DS: Data Segment register, holds the segment base address for data storage and retrieval.
;  - CL: Lower 8 bits of the CX register, often used as a loop counter in iterative operations.
;  - MOV: The MOV instruction copies the value from a source to a destination register or memory location.
;  - INC: The INC instruction increases the value of a specified register by 1.
;  - ADD: The ADD instruction adds the value of the source operand to the destination operand and stores the result in the destination.
;  - LOOP: The LOOP instruction decrements the loop counter (CL) and jumps to a specified label if CL is not zero.
;  - HLT: The HLT instruction stops the CPU until a reset or external interrupt occurs.
;
; This code performs the following operations:
; 1. Initializes the DS segment to 0300H, with DI pointing to the start of this segment.
; 2. Sets AX to 0000H and prepares the loop to run 5 times (CL = 5).
; 3. Within the loop:
;    - Stores the current value of AX into the memory location pointed to by DI.
;    - Increments DI to move to the next memory address.
;    - Adds 02H to AX, increasing its value for the next loop iteration.
; 4. The loop runs 5 times, storing values from 0000H to 0008H in memory.
; 5. Finally, the CPU is halted, ending the program.

```

---

![Write In Data Memory Segment](<./Assests/1Write In Data Memory Segment.png>) <br>
![Write In Data Memory Segment](<./Assests/2Write In Data Memory Segment.png>) <br>
![Write In Data Memory Segment](<./Assests/3Write In Data Memory Segment.png>) <br>
![Write In Data Memory Segment](<./Assests/4Write In Data Memory Segment.png>) <br><br>

---
