MOV R0,#0x10
MOV R1,#0x11
MOV R2,#0x12
MOV R3,#0x13
MOV R4,#0x14
ADD R5,R0,R1
ADD R6,R5,R2
ADD R7,R6,R3
ADD R8,R7,R4
swi 0x11