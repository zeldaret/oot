.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8098E1D0
    .asciz "../z_demo_kekkai.c"
    .balign 4

glabel D_8098E1E4
    .asciz "\"当ったよ\" = %s\n"
    .balign 4

.balign 4

glabel D_8098E1F8
 .word 0xC5F6A4C3, 0xA4BFA4E8, 0x00000000
glabel D_8098E204
    .asciz "../z_demo_kekkai.c"
    .balign 4

glabel D_8098E218
    .asciz "../z_demo_kekkai.c"
    .balign 4

glabel D_8098E22C
    .asciz "../z_demo_kekkai.c"
    .balign 4

glabel D_8098E240
    .asciz "../z_demo_kekkai.c"
    .balign 4

glabel D_8098E254
    .asciz "../z_demo_kekkai.c"
    .balign 4

glabel D_8098E268
    .asciz "../z_demo_kekkai.c"
    .balign 4

glabel D_8098E27C
    .asciz "../z_demo_kekkai.c"
    .balign 4

glabel jtbl_8098E290
.word L8098D0F0
.word L8098D148
.word L8098D148
.word L8098D148
.word L8098D148
.word L8098D148
.word L8098D148
glabel D_8098E2AC
 .word 0x45BEA000
glabel D_8098E2B0
 .word 0x459C4000
glabel D_8098E2B4
 .word 0x477FFF00
glabel D_8098E2B8
 .word 0x3E4CCCCD
glabel D_8098E2BC
 .word 0x3B449BA6
glabel D_8098E2C0
 .word 0x3F7D70A4
glabel D_8098E2C4
 .word 0x3D4CCCCD
glabel D_8098E2C8
 .word 0x3A23D70A, 0x00000000


