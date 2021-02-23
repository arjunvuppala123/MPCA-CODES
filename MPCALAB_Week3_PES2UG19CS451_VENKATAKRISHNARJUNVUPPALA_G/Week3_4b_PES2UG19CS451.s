.data
    A: .WORD 1,-2,0,4,0
.text
    LDR r0, =A
    MOV r1, #5
    MOV r3,#0
    MOV r4,#0
    MOV r5,#0
    loop:
        LDR r2, [r0]
        CMP r2, #0
        BEQ zero
	BMI negative
        ADD R4,R4,#1
	ADD r0, r0, #4
    	SUBS r1, r1, #1
 	BNE loop
    	zero:
        	ADD R3,R3,#1;
			ADD r0, r0, #4
    		SUBS r1, r1, #1
    		BNE loop
		SWI 0x011
        negative:
        	ADD R5,R5,#1;
			ADD r0, r0, #4
    		SUBS r1, r1, #1
    		BNE loop
		SWI 0x011
    	MOV r3, #-1
    	SWI 0x011

.end
