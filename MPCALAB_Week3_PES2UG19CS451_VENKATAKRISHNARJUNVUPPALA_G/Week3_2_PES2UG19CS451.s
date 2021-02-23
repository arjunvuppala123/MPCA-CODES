.data
   .data
    A: .word 1, 2, 3, 4,5
    B: .word 0, 0, 0, 0,0 
.text
    LDR r0, =A
    LDR r1, =B
    LDR r5, [r1]
    MOV r2,#5;
    loop:
    	LDR r3, [r0]
        ADD r0, r0, #4
        MOV r4,r3
        STR r4,=B
        STR r4, [r1]  
        ADD r1, r1, #4
    	SUBS r2, r2, #1
    	BNE loop
        SWI 0x011
.end