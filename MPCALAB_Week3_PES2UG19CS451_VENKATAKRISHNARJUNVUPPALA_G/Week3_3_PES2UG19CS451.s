.data
    A: .WORD 3,2,1,4,5
.text
    LDR r0, =A
    MOV r1, #4
    LDR r2, [r0]
    loop:
        CMP r2, #0
        BEQ zero
        BNE nonzero
        zero:
            SWI 0x011
        nonzero:
            ldr r3,[r0,#4];
            cmp r3,r2;
            BLT small;
            add r0,r0,#4
            SUBS r1, r1, #1
            BNE loop;
            SWI 0x011
            small:
                MOV r2,r3;
                add r0,r0,#4
                SUBS r1, r1, #1
                BNE loop;
                SWI 0x011
.end