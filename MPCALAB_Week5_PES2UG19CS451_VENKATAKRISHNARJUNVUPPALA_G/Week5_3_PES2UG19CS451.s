.data
    STR: .ASCIZ "Hello World!"
    CPY: .ASCIZ ""
.text
    LDR R0, =STR
    LDR R1, =CPY
    loop:
        LDRB R2, [R0]
        CMP R2, #0
        BEQ empty
        STRB R2,[R1]
        ADD R0, R0, #1
        ADD R1, R1, #1
        B loop
    empty:
        SWI 0X011