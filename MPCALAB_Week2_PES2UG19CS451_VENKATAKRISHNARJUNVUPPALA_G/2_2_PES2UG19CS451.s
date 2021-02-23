.text
    MOV r0, #0x04
    MOV r1, #0x05
    CMP r0, r1
    BEQ Lone
    BNE Ltwo
    Lone:
        ADD r2,r0,r1
        SWI 0x011
    Ltwo:
        SUB r3,r0,r1
        SWI 0x011
.end