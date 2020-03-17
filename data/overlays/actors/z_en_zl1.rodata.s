.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B4E720
    .asciz "../z_en_girlB.c"
    .balign 4

glabel D_80B4E730
    .asciz "../z_en_girlB.c"
    .balign 4

glabel jtbl_80B4E740
.word L80B4B308
.word L80B4B3B8
.word L80B4B44C
.word L80B4B4C4
.word L80B4B524
.word L80B4B59C
.word L80B4B5E0
.word L80B4B640
.word L80B4B684
.word L80B4B6FC
glabel jtbl_80B4E768
.word L80B4BF6C
.word L80B4BFE0
.word L80B4C070
.word L80B4C0E8
.word L80B4C130
.word L80B4C17C
.word L80B4C1A0
.word 0x00000000, 0x00000000, 0x00000000


