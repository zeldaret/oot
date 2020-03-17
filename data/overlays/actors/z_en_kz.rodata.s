.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80A9D970
    .asciz "../z_en_kz.c"
    .balign 4

glabel D_80A9D980
    .asciz "../z_en_kz.c"
    .balign 4

glabel jtbl_80A9D990
.word L80A9C8D0
.word L80A9C8D0
.word L80A9C8D0
.word L80A9C794
.word L80A9C844
.word L80A9C8B8
.word L80A9C710
.word L80A9C8D0
.word L80A9C8D0
.word L80A9C8D0
glabel D_80A9D9B8
 .word 0x44CCC000
glabel D_80A9D9BC
 .word 0x43848000
glabel D_80A9D9C0
 .word 0x4622F983
glabel D_80A9D9C4
 .word 0x3DCCCCCD, 0x00000000, 0x00000000


