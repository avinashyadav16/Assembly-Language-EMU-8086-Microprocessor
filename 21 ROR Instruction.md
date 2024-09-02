# Rotate Right Instruction 🔄

## Overview 📝

The `ROR` (Rotate Right) instruction in assembly language rotates the bits of the destination operand to the right by a specified count. The bits that are shifted out on the rightmost side are reintroduced on the leftmost side.

## Instruction Format 📜

```assembly
ROR <destination_operand>, <count>
```

- `destination_operand`: The register or memory location whose bits are to be rotated.
- `count`: The number of bit positions to rotate.
- The `ROR` instruction rotates the bits of the destination operand to the right by the number of positions specified in the count.
- The rightmost bits that are shifted out are reintroduced at the leftmost positions.
- The content of the operand is shifted right, and the bits that are rotated out on the right are shifted into the leftmost positions.

## Explanation 🔍

- The `ROR` instruction rotates the bits within the `destination_operand` to the right, where the `count` specifies how many positions the bits should be rotated.
- During the rotation:
  - The rightmost bits that are shifted out are moved to the leftmost positions.
  - No bits are lost; they are simply rotated around.

## Example 🧩

```assembly
MOV AX, 9E78H   ; 1001 1110 0111 1000  (Initial Value in AX)
MOV CL, 03H     ; Rotate by 3 bits

ROR AX, CL      ; Rotate AX right by 3 bits
                ;
                ; 1st Rotate: _ _ _1 0011 1100 1111
                ; 2nd Rotate:  1 0011 1100 1111 _ _ _
                ; 3rd Rotate:  0001 0011 1100 1111 => 13CFH

HLT             ; Halt the program
```

## Step-by-Step Breakdown: 💡

1. **Initial Value in AX**: `1001 1110 0111 1000` (9E78H)
2. **Rotate by 1**:
   - Bits: `_ _ _1 0011 1100 1111`
3. **Rotate by 2**:
   - Bits: `1 0011 1100 1111 _ _ _`
4. **Rotate by 3**:
   - Bits: `0001 0011 1100 1111`
   - Final Result: `0001 0011 1100 1111` (13CFH in AX)

After the operation, the value in AX is `13CFH`.
![ROR instruction](<./Assests/1ROR instruction.png>) <br>
![ROR instruction](<./Assests/2ROR instruction.png>) <br>
![ROR instruction](<./Assests/3ROR instruction.png>) <br>
![ROR instruction](<./Assests/4ROR instruction.png>) <br>

---

---

- **`The ROR instruction is particularly useful for bitwise operations where the position of bits needs to be manipulated without loss of data. It is commonly used in cryptographic algorithms and other low-level data manipulation tasks.`**
- **`Understanding the bitwise rotation logic is essential for optimizing code that involves bit-level processing in assembly language programming.`**

---

---

## Sample Code For Understanding: 🔥

Here’s a simple "ROR instruction" operation program written in assembly language for TASM:

```assembly
; @author: Avinash Yadav
; @file-name: Lecture-21.asm

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Rotate Right (ROR) Operation ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Step 1: Load Immediate Value into AX
; ------------------------------------------------------------
; Move the hexadecimal value 9E78H into the AX register.
; AX is a general-purpose 16-bit register.
; Binary representation of 9E78H is: 1001 1110 0111 1000
MOV AX, 9E78H   ; 1001 1110 0111 1000

; Step 2: Load Rotate Count into CL
; ------------------------------------------------------------
; Move the value 03H into the CL register.
; CL is the lower 8 bits of the CX register and is often used to store the count for rotate and shift instructions.
MOV CL, 03H

; Step 3: Perform Rotate Right (ROR) Operation
; ------------------------------------------------------------
; Rotate the bits in AX to the right by the number of positions specified in CL.
; The bits that are rotated out on the right are reintroduced on the left side.
; 
; Initial AX (before rotation): 1001 1110 0117 1000
; Step-by-step rotation process:
; 1. Rotate right by 1 bit:
;    - 0100 1111 0011 1100
; 2. Rotate right by 1 more bit:
;    - 0010 0111 1001 1110
; 3. Rotate right by 1 more bit:
;    - 0001 0011 1100 1111  => AX = 13CFH
ROR AX, CL      ; Final AX value: 13CFH

; Step 4: Halt the Program
; ------------------------------------------------------------
; Halt the execution of the program.
HLT

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;  Detailed Explanation:
;  ----------------------
;  - AX: Accumulator register (16-bit), used for various operations.
;  - CL: The lower 8 bits of the CX register, commonly used for rotate/shift count.
;  - ROR: The ROR (Rotate Right) instruction rotates the bits in a register to the right. 
;         The bits shifted out from the rightmost position are placed back in the leftmost positions.
;  - HLT: The HLT instruction stops the CPU until a reset or external interrupt occurs.
; 
; This code performs the following operations:
; 1. Loads 9E78H into AX and 03H into CL.
; 2. Rotates the bits in AX to the right by 3 positions.
; 3. The result of the rotation is stored back in AX, which is 13CFH.
; 4. The program halts after the rotation.
```
