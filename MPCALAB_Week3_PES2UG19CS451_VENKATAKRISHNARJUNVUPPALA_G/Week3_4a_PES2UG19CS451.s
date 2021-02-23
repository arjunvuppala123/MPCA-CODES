.text
    LDR r0, =0b11110000101011111111000010100100;
    MOV r1,#32;
    MOV r2,#0;
    MOV r3,#0;
    loop:
        MOVS r0,r0, LSR#1;
        ADDCS r2,r2,#1;
        ADDCC r3,r3,#1;
        ADD r0,r0,#1;
        SUBS r1, r1, #1
        BNE loop
        SWI 0x011

.end