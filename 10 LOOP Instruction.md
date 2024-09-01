# LOOP Instruction in Assembly Language 🔄

The `LOOP` instruction is used to repeat a block of code a specific number of times in the 8086 microprocessor. Below is a detailed explanation of how the `LOOP` operation works and an example of how to use it.

## Format 🔢

`LOOP <label>`

- **LOOP**: Decrements the CX register and jumps to the specified label if CX is not zero.
- **Operation**:
  - `CX = CX - 1`
  - If `CX ≠ 0`, jump to `<label>`.
- **CX Register**: The count register, which determines the number of times the loop will execute.
- **Label**: The point in the code where control will transfer if CX is not zero.

---

### Example Usage 🛠️

```nasm
; Initialize CX register with a count value
MOV CX, 5

start_loop:
; Place the code you want to repeat here

; Decrement CX and loop to start_loop if CX is not zero
LOOP start_loop

; Halt the execution of the program (stop the CPU)
HLT
```

- **Explanation:**
- The `MOV CX, 5` instruction sets the CX register to 5.
- The `LOOP` instruction will execute the block of code labeled `start_loop` five times.
- Each time `LOOP` is executed, it decrements CX and checks if it is zero.
- If CX is not zero, the program jumps back to `start_loop`.
- Once CX reaches zero, the loop terminates, and the program continues with the instruction after `LOOP`.

This code demonstrates how to use the LOOP instruction to repeat a block of code a specific number of times based on the value in the CX register.

---

![LOOP Instruction in Assembly Language](<./Assests/1LOOP Instruction in Assembly Language.png>) <br>
![LOOP Instruction in Assembly Language](<./Assests/2LOOP Instruction in Assembly Language.png>) <br>
![LOOP Instruction in Assembly Language](<./Assests/3LOOP Instruction in Assembly Language.png>) <br>
![LOOP Instruction in Assembly Language](<./Assests/4LOOP Instruction in Assembly Language.png>) <br>
![LOOP Instruction in Assembly Language](<./Assests/5LOOP Instruction in Assembly Language.png>) <br>
![LOOP Instruction in Assembly Language](<./Assests/6LOOP Instruction in Assembly Language.png>) <br>
![LOOP Instruction in Assembly Language](<./Assests/7LOOP Instruction in Assembly Language.png>) <br>
![LOOP Instruction in Assembly Language](<./Assests/8LOOP Instruction in Assembly Language.png>) <br><br>

---

## Sample Code For Understanding: 🔥

Here’s a simple "LOOP" operation program written in assembly language for TASM:

```assembly
; @author: Avinash Yadav
; @file-name: Lecture-10.asm

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;      LOOP Operation       ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

MOV AX, 00H      ; Initialize the AX register with 00H.
                 ; AX = 0000H.

MOV BX, 02H      ; Load the BX register with 02H.
                 ; BX = 0002H.

MOV CX, 02H      ; Load the CX register with 02H.
                 ; CX = 0002H.

ABC: ADD AX, BX  ; Add the value in BX (02H) to AX.
                 ; AX = AX + BX.
                 ; This instruction will be executed twice due to the LOOP instruction below.

LOOP ABC         ; Decrement CX by 1 and jump to the label ABC if CX is not zero.
                 ; Since CX starts at 2, the loop will run twice.
                 ; After the first iteration:
                 ;   - CX = 01H (1 remaining loop).
                 ;   - AX = 0002H (after first ADD).
                 ; After the second iteration:
                 ;   - CX = 00H (loop ends).
                 ;   - AX = 0004H (after second ADD).

HLT              ; Halt the processor.
                 ; The program stops executing here.
```
