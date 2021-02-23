.data

    A: .WORD 10
    B: .WORD 20
    C: .WORD 0


.text
    LDR r0, =A
    LDR r3, [r0]
    LDR r1, =B
    LDR r4, [r1] 
    LDR r2, =C
    LDR r5, [r2]
    ADD r6,r4,r3;
    MOV r7,r4,LSL#2;
    ADD r8,r7,r4;
    ADD r9,r6,r8;
    STR r9, =C
.end