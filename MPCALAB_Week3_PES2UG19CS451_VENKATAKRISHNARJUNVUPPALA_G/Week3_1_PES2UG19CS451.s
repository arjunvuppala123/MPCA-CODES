.data

   A: .word 12213441, 56657882
   B: .word 98764533, 45326783
   C: .WORD 0


.text
ldr r0,=A
ldr r1,[r0]
ldr r2,[r0,#4]
ldr r0,=B
ldr r3,[r0]
ldr r4,[r0,#4]
adds r6,r2,r4
adc r5,r1,r3
ldr r0,=C
str r5,[r0]
str r6,[r0,#4]
swi 0x011
.end