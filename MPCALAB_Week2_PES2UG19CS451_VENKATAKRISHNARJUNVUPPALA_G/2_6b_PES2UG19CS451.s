.data
 num: .byte 1,2,3,4,5
.text
 ldr r0,=num
 mov r1,#0
 mov r3, #4
 up:ldrb r2,[r0],#1
 add r1,r1,r2
 subs r3,r3,#1
;cmp r3,#0 
bne up
 swi 0x11
.end