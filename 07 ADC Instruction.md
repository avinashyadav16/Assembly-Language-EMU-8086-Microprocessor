# ADC Instruction in Assembly Language ➕

The `ADC` (Add with Carry) instruction is used to add two operands along with the carry flag in the 8086 microprocessor. Below is a detailed explanation of how the `ADC` operation works and examples of how to use it.

## Format 🔢

`ADC <destination_operand>, <source_operand>`

- **ADC**: Adds the value from the source operand, the value in the destination operand, and the carry flag.
- **Operation**: `D + S + C -> D` i.e. `Destination + Source + Carry = Destination`
- **destination_operand**: Can be a register or memory location.
- **source_operand**: Can be a register, memory location, or an immediate value.
- **C (Carry flag)**: A flag that indicates if the previous addition resulted in a carry.

---

## Example Usage 🛠️

### Example 1: Adding Two 16-bit Numbers with Carry

---

Let's take an example where we need to add two 16-bit numbers, `1234H` and `5678H`, along with the carry flag.

```assembly
MOV AX, 1234H    ; Load AX with the value 1234H
MOV BX, 5678H    ; Load BX with the value 5678H
ADC AX, BX       ; Add AX, BX, and the carry flag, and store the result in AX
HLT              ; Halt the execution
```

![Adding Two 16-bit Numbers with Carry](<./Assests/1Adding Two 16-bit Numbers with Carry.png>) <br>
![Adding Two 16-bit Numbers with Carry](<./Assests/2Adding Two 16-bit Numbers with Carry.png>) <br>
![Adding Two 16-bit Numbers with Carry](<./Assests/3Adding Two 16-bit Numbers with Carry.png>) <br>
![Adding Two 16-bit Numbers with Carry](<./Assests/4Adding Two 16-bit Numbers with Carry.png>) <br>
![Adding Two 16-bit Numbers with Carry](<./Assests/5Adding Two 16-bit Numbers with Carry.png>) <br><br>

### Result

---

If the carry flag was set, the result of the addition will be stored in the AX register, including the carry.

<br><br>

### Example 2: Adding with Carry in Memory

---

Similarly, you can add values stored in memory along with the carry:

```assembly
MOV AX, [1234H] ; Load AX with the value at memory location 1234H
MOV BX, [5678H] ; Load BX with the value at memory location 5678H
ADC AX, BX ; Add AX, BX, and the carry flag, and store the result in AX
HLT ; Halt the execution
```

### Result

---

The AX register will contain the result of the addition, including the carry.

<br><br>

## Sample Code For Understanding: 🔥

Here’s a simple "ADC" operation program written in assembly language for TASM:

```assembly
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
```
