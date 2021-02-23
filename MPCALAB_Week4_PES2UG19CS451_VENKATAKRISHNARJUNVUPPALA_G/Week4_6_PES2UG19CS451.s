.data
    A: .WORD 1,2,3,4,5,6,7,8,9
.text
    LDR r0, =A
    MOV r2, #3
    MOV r5, #0
    MOV r6, #3
    loop:
        LDR r3, [r0]
        loop1:
            ADD r5, r5, r3
            SUBS r6, r6, #1
            ADD r0, r0 ,#4
            ADD r1, r1, #4
        BNE loop1;
        SUBS r2, r2, #1       
        ADD r0, r0 ,#4
        ADD r6,r6,#3;
        BNE loop
.end