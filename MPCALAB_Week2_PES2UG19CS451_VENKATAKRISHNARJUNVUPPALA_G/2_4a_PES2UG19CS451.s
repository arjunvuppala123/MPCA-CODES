.data

    A: .WORD 10
    B: .WORD 20
    C: .WORD 0

.text

    LDR r0, =A
    LDR r0, [r0]
    LDR r1, =B
    LDR r1, [r1] 
    LDR r2, =C
    LDR r2, [r2]
    ADD r2, r0, r1
    STR r2, =C
    STR r2, [r2]
.end