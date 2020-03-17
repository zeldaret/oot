.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80996060
    .asciz "bank_ID = %d\n"
    .balign 4

glabel D_80996070
 .word 0x73746174, 0x7573203D, 0x2025640A, 0x00000000
glabel D_80996080
    .asciz "../z_door_killer.c"
    .balign 4

glabel D_80996094
    .asciz "../z_door_killer.c"
    .balign 4

glabel jtbl_809960A8
.word L80994D4C
.word L80994E88
.word L80994E88
.word L80994E88
.word L80994E88
glabel D_809960BC
 .word 0xBF19999A
glabel D_809960C0
 .word 0x40FC28F6
glabel D_809960C4
 .word 0x421F3333
glabel D_809960C8
 .word 0x417DC28F
glabel D_809960CC
 .word 0x4277EB85
glabel D_809960D0
 .word 0x406E147B
glabel D_809960D4
 .word 0x42AA3333
glabel D_809960D8
 .word 0x3F7AE148
glabel D_809960DC
 .word 0x3DCCCCCD
glabel D_809960E0
 .word 0x3E4CCCCD
glabel jtbl_809960E4
.word L80995DD8
.word L80995DF4
.word L80995DF4
.word L80995DF4
.word L80995DF4
.word 0x00000000, 0x00000000


