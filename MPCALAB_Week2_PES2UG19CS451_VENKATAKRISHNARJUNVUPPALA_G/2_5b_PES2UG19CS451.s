.data

    A: .word 20
    B: .word 10
    C: .word 0

.text
    LDR r0, =A
    LDR r1, =B
    LDR r2, =C
    LDR r3, [r0]
    LDR r4, [r1] 
    LDR r5, [r2]
    loop:
        CMP r4, r3
        BEQ L1
        BMI L2
        B L3
    L1:
        MOV r5, r3
        STR r5, =C
        STR r2, [r5]
        SWI 0x011
    L2:
        SUB r3, r3, r4
        B loop
    L3:
        SUB r4, r4, r3
        B loop
.end