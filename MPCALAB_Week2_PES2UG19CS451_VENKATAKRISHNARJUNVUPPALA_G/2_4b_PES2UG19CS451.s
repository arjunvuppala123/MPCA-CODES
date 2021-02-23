.data

    A: .hword 5
    B: .hword 6
    C: .hword 0

.text

    LDR r0, =A
    LDR r1, =B
    LDR r2, =C
    LDRH r3, [r0]
    LDRH r4, [r1] 
    LDRH r5, [r2]
    ADD r5, r3, r4
    STR r5, =C
    STRH r2, [r5]
.end