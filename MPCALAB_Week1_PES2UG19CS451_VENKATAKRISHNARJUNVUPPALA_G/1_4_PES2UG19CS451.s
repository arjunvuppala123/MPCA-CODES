mov r1,#0x08
and r2,r1,#1
cmp r2,#0
beq label
mov r2,#0
swi 0x11
label:
mov r2,#1
;depending on r1, r2 will be 1 or 0
swi 0x11
