.DATA
A: .ASCIZ "HELLO WORLD"
B: .ASCIZ "L";

.TEXT
LDR R1, =A;
LDR R2, =B;
MOV R5, #0;
LDR R3, [R2];

LOOP:
        LDRB R0, [R1], #1;
        CMP R0, R3;
        ADDEQ R5, R5, #1;
        CMP R0, #0;
        BNE LOOP
        SWI 0X11;
