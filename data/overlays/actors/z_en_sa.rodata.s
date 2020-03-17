.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80AF7490
    .asciz "../z_en_sa.c"
    .balign 4

glabel D_80AF74A0
    .asciz "../z_en_sa.c"
    .balign 4

glabel jtbl_80AF74B0
.word L80AF57C4
.word L80AF57C4
.word L80AF573C
.word L80AF57C4
.word L80AF57C4
.word L80AF57C4
.word L80AF57C4
.word L80AF57C4
.word L80AF57C4
.word L80AF57C4
glabel jtbl_80AF74D8
.word L80AF5D14
.word L80AF5D24
.word L80AF5D34
.word L80AF5D44
.word L80AF5D54
.word L80AF5D64
.word L80AF5D74
glabel jtbl_80AF74F4
.word L80AF637C
.word L80AF62B4
.word L80AF627C
.word L80AF6350
.word L80AF62DC
.word L80AF6298
glabel D_80AF750C
 .word 0xC50AC000
glabel D_80AF7510
 .word 0x40490FDB
glabel D_80AF7514
 .word 0x40490FDB
glabel D_80AF7518
 .word 0x40490FDB
glabel D_80AF751C
 .word 0x40490FDB


