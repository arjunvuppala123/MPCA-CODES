.data
    A: .WORD 1,2,3,4,5,6,7,8,9
    B: .WORD 0,0,0,0,0,0,0,0,0
.text
    LDR r0, =A
    LDR r1, =B
    MOV r2, #3
    MOV r6, #3
    loop:
        LDR r3, [r0]
        LDR r4, [r1]
        loop1:
            MOV r4,r3
            SUBS r6, r6, #1
            ADD r0, r0 ,#4
            ADD r1, r1, #4
        BNE loop1;
        SUBS r2, r2, #1       
        ADD r0, r0 ,#4
        ADD r1, r1, #4
        ADD r6,r6,#3;
        BNE loop
.end