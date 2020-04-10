.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B37B20
    .asciz "\n\n"
    .balign 4

glabel D_80B37B24
    .asciz "[32m☆☆☆☆☆ 同時発生数 ☆☆☆☆☆%d\n[m"
    .balign 4

glabel D_80B37B50
    .asciz "\n\n"
    .balign 4

glabel D_80B37B54
    .asciz "../z_en_wf.c"
    .balign 4

glabel D_80B37B64
    .asciz "../z_en_wf.c"
    .balign 4

glabel D_80B37B74
    .float 0.2
    .balign 4

glabel D_80B37B78
    .float 0.3
    .balign 4

glabel D_80B37B7C
 .word 0x3E333333
glabel D_80B37B80
    .float 0.7
    .balign 4

glabel D_80B37B84
    .float 0.03
    .balign 4

glabel D_80B37B88
    .float 0.8
    .balign 4

glabel D_80B37B8C
 .word 0x3E333333
glabel D_80B37B90
 .word 0x3E333333
glabel D_80B37B94
 .word 0x3E333333
glabel D_80B37B98
    .float -0.85
    .balign 4

glabel D_80B37B9C
    .float 0.4
    .balign 4

glabel D_80B37BA0
 .word 0x454CC000
glabel D_80B37BA4
    .float 0.7
    .balign 4

glabel D_80B37BA8
    .float 0.7
    .balign 4

glabel D_80B37BAC
    .float 0.7
    .balign 4

glabel D_80B37BB0
    .float 0.7
    .balign 4

glabel D_80B37BB4
    .float 0.2
    .balign 4

glabel D_80B37BB8
    .float 0.05
    .balign 4

glabel D_80B37BBC
    .float 0.05
    .balign 4

glabel D_80B37BC0
 .word 0x3E333333
glabel D_80B37BC4
 .word 0x3E333333
glabel D_80B37BC8
 .word 0x3E333333
glabel D_80B37BCC
 .word 0x460B6000
glabel D_80B37BD0
    .float 0.2
    .balign 4

glabel jtbl_80B37BD4
.word L80B375C0
.word L80B375A0
.word L80B37598
.word L80B375C4
.word L80B375A8
.word L80B375B8
.word L80B375C4
.word L80B37590
.word L80B375C4
.word L80B37580
.word L80B375C4
.word L80B375C4
.word L80B375C4
.word L80B37578
.word L80B375C4
.word L80B37588
.word L80B375C4
.word L80B375C4
.word L80B375C4
.word L80B375C4
.word L80B375C4
.word L80B375C4
.word L80B375C4
.word L80B375C4
.word L80B375C4
.word L80B375C4
.word L80B375C4
.word L80B375C4
.word L80B375C4
.word L80B375C4
.word L80B375C4
.word L80B375C4
.word L80B375B0
.word 0x00000000, 0x00000000


