.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80AA28D0
    .asciz "../z_en_ma2.c"
    .balign 4

glabel D_80AA28E0
    .asciz "../z_en_ma2.c"
    .balign 4

glabel D_80AA28F0
    .asciz "../z_en_ma2.c"
    .balign 4

glabel D_80AA2900
    .asciz "../z_en_ma2.c"
    .balign 4

glabel jtbl_80AA2910
.word L80AA1AD0
.word L80AA1AD0
.word L80AA1A78
.word L80AA1AD0
.word L80AA1AD0
.word L80AA1AD0
.word L80AA1AD0
.word L80AA1AD0
.word L80AA1AD0
.word L80AA1AD0
glabel D_80AA2938
 .word 0x40490FDB
glabel D_80AA293C
 .word 0x40490FDB
glabel D_80AA2940
 .word 0x40490FDB
glabel D_80AA2944
 .word 0x40490FDB, 0x00000000, 0x00000000


