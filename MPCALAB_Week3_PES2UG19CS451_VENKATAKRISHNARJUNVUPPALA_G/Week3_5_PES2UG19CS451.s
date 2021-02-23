.data
    A: .WORD 1,2,3,4,5
.text
    LDR r0, =A
    MOV r1, #5
    loop:
        LDR r2, [r0]
        CMP r2, #2
        BEQ found
        ADD r0, r0, #4
        SUBS r1, r1, #1
        BNE loop
    MOV r3, #-1
    SWI 0x011
    found:
        MOV r3, #1
        SWI 0x011 
.end

