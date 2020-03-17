.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B3BFA0
    .asciz "../z_en_wood02.c"
    .balign 4

glabel D_80B3BFB4
    .asciz "../z_en_wood02.c"
    .balign 4

glabel D_80B3BFC8
    .asciz "../z_en_wood02.c"
    .balign 4

glabel D_80B3BFDC
    .asciz "../z_en_wood02.c"
    .balign 4

glabel jtbl_80B3BFF0
.word L80B3B3C4
.word L80B3B40C
.word L80B3B438
.word L80B3B3FC
.word L80B3B400
.word L80B3B40C
.word L80B3B3FC
.word L80B3B400
.word L80B3B3FC
.word L80B3B400
.word L80B3B40C
.word L80B3B40C
.word L80B3B3C4
.word L80B3B3FC
.word L80B3B400
.word L80B3B3B4
.word L80B3B3B8
.word L80B3B40C
.word L80B3B3C4
.word L80B3B3FC
.word L80B3B400
.word L80B3B3B4
.word L80B3B3B8
.word L80B3B470
.word L80B3B470
glabel D_80B3C054
 .word 0x3F19999A
glabel D_80B3C058
 .word 0x3CA3D70A
glabel D_80B3C05C
 .word 0xC0466666
glabel D_80B3C060
 .word 0x477FFF00, 0x00000000, 0x00000000, 0x00000000

