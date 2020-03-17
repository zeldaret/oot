.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809B0F90
    .asciz "../z_en_ani.c"
    .balign 4

glabel D_809B0FA0
    .asciz "../z_en_ani.c"
    .balign 4

glabel jtbl_809B0FB0
.word L809B0BC0
.word L809B0BD4
.word L809B0BE8
.word L809B0BFC
.word L809B0C10
.word 0x00000000, 0x00000000, 0x00000000


