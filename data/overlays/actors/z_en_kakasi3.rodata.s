.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80A91D60
 .word 0x0A0A0000
glabel D_80A91D64
    .asciz "[33m☆☆☆☆☆ おーボヌール ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80A91D94
    .asciz "[35m☆☆☆☆☆ まさか！ ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80A91DC0
 .word 0x0A0A0000
glabel D_80A91DC4
    .asciz "[36m☆☆☆☆☆ これで、他の奴もＯＫ！だ！ ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80A91E04
 .word 0x0A0A0000
glabel D_80A91E08
    .asciz "[33m☆☆☆☆☆ フラグ！ ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80A91E34
 .word 0x412FD70A
glabel D_80A91E38
 .word 0x409FAE14
glabel D_80A91E3C
 .word 0x403F5C29
glabel jtbl_80A91E40
.word L80A90F68
.word L80A90F98
.word L80A90FB4
.word L80A90FD4
.word L80A90FF4
.word 0x00000000, 0x00000000, 0x00000000


