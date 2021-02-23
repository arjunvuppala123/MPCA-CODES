.data

    A:.WORD 1,2,3,4,5,6,7,8,9,10


.text

    LDR r0 ,=A
    MOV r1, #10
    loop:
        LDR r3, [r0]
        ADD r2, r2, r3
        SUB r1, r1, #1
        ADD r0, r0, #4
        CMP r1, #0
    BNE loop

.end