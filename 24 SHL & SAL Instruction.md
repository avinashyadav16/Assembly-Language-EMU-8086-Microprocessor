# SHL & SAL Instruction ↗️

## Overview 📝

The `SHL` (Shift Logical Left) and `SAL` (Shift Arithmetic Left) instructions are used to shift the bits of a destination operand to the left by a specified count. Although they perform similar operations, they have distinct conceptual differences.

- **`SHL (Shift Logical Left)`**: Shifts the bits to the left, filling the least significant bit (LSB) with 0. This instruction treats the operand as an unsigned binary number.
- **`SAL (Shift Arithmetic Left)`**: Shifts the bits to the left, similar to `SHL`, but treats the operand as a signed 2's complement number. Despite this, the left shift operation results in the same outcome for both `SHL` and `SAL`.

## Instruction Formats 📜

```assembly
SHL <destination_operand>, <count>
SAL <destination_operand>, <count>
```

- `destination_operand`: The register or memory location whose bits are to be shifted.
- `count`: The number of bit positions to shift.

## Logical Shift vs. Arithmetic Shift 🔍

### Logical Shift: `SHL`

- The `SHL` instruction shifts the bits of the operand to the left by the specified count.
- The bits shifted out of the leftmost position are discarded, and zeros are introduced into the LSB positions.

### Arithmetic Shift: `SAL`

- The `SAL` instruction also shifts the bits of the operand to the left by the specified count, considering the operand as a signed 2's complement number.
- Just like `SHL`, the bits shifted out on the left are discarded, and zeros fill the LSB.

**`In the case of a left shift, SHL and SAL produce the same result. However, for right shifts, the two instructions differ.`**

## Example 🧩

### Example 1: Logical Shift Left (`SHL`)

```assembly
MOV AX, 7FA4H  ; 0111 1111 1010 0100  (Initial Value in AX)
MOV CL, 02H    ; Shift by 2 bits

SHL AX, CL     ; Shift AX left by 2 bits
               ;
               ; Initial: 0111 1111 1010 0100
               ; 1st Shift: 1111 1110 1001 0000
               ; Final Value in AX: FE90H

HLT            ; Halt the program
```

### Example 2: Arithmetic Shift Left (`SAL`)

```assembly
MOV AX, 7FA4H  ; 0111 1111 1010 0100  (Initial Value in AX)
MOV CL, 02H    ; Shift by 2 bits

SAL AX, CL     ; Shift AX left by 2 bits
               ;
               ; Initial: 0111 1111 1010 0100
               ; 1st Shift: 1111 1110 1001 0000
               ; Final Value in AX: FE90H

HLT            ; Halt the program
```

## Step-by-Step Breakdown: 💡

1. **Initial Value in AX**: `0111 1111 1010 0100` (7FA4H)
2. **Shift by 2**:
   - **First Shift**:
     - `_ _11 1111 1010 0100` (Shifted left, zeros fill the LSB)
   - **Final Shift**:
     - `1111 1110 1001 0000` (Result after 2 shifts)
   - **Final Result**: `FE90H` in AX for both `SHL` and `SAL`.

![SHL & SAL Instruction](<./Assests/1SHL & SAL Instruction.png>) <br>
![SHL & SAL Instruction](<./Assests/2SHL & SAL Instruction.png>) <br>
![SHL & SAL Instruction](<./Assests/3SHL & SAL Instruction.png>) <br>
![SHL & SAL Instruction](<./Assests/4SHL & SAL Instruction.png>) <br><br>

## Remark Point 🛠️

- `SHL` is typically used when dealing with unsigned binary numbers, where a logical shift is required.
- `SAL` is used when working with signed numbers in 2's complement form.
- For left shifts, both `SHL` and `SAL` yield the same result.

---

---

- 🔧 **`Understanding the difference between SHL and SAL is crucial when working with both signed and unsigned binary numbers, especially in tasks that require precise bit manipulation.`**
- 💡 **`In assembly programming, the choice between SHL and SAL can impact the interpretation of data, making it essential to understand the context in which each instruction is used.`**

---

---

## Sample Code For Understanding: 🔥

Here’s a simple "SHL Instruction" operation program written in assembly language for TASM:

```assembly
; @author: Avinash Yadav
; @file-name: Lecture-24.asm

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Shift Left (SHL) Operation ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Step 1: Load Immediate Value into AX
; ------------------------------------------------------------
; Move the hexadecimal value 7FA4H into the AX register.
; AX is a general-purpose 16-bit register.
; Binary representation of 7FA4H is: 0111 1111 1010 0100
MOV AX, 7FA4H   ; 0111 1111 1010 0100

; Step 2: Load Shift Count into CL
; ------------------------------------------------------------
; Move the value 02H into the CL register.
; CL is the lower 8 bits of the CX register and is often used to store the count for shift instructions.
MOV CL, 02H     ; Shift by 2 positions

; Step 3: Perform Shift Left (SHL) Operation
; ------------------------------------------------------------
; Shift the bits in AX to the left by 2 positions.
;
; Initial AX (before shift): 0111 1111 1010 0100
;
; Step-by-step shifting process:
; 1. Shift left by 1 position:
;    - _111 1111 1010 0100  => 1111 1110 1001 0000
; 2. Shift left by another position:
;    - 1111 1110 1001 0000  => 1111 1110 1001 0000  => Final AX = FE90H

SHL AX, CL      ; Final AX value: FE90H

; Step 4: Halt the Program
; ------------------------------------------------------------
; Halt the execution of the program.
HLT

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;  Detailed Explanation:
;  ----------------------
;  - AX: Accumulator register (16-bit), used for various operations.
;  - CL: The lower 8 bits of the CX register, commonly used for shift/rotate count.
;  - SHL: The SHL (Shift Left) instruction shifts the bits in a register to the left by the specified number of positions.
;         Zeros are filled in from the right as bits are shifted out.
;  - HLT: The HLT instruction stops the CPU until a reset or external interrupt occurs.
;
; This code performs the following operations:
; 1. Loads 7FA4H into AX.
; 2. Shifts the bits in AX to the left by 2 positions.
; 3. The result of the shift is stored back in AX, which is FE90H.
; 4. The program halts after the shift.
```
