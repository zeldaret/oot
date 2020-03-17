.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80AA38C0
    .asciz "../z_en_ma3.c"
    .balign 4

glabel D_80AA38D0
    .asciz "../z_en_ma3.c"
    .balign 4

glabel D_80AA38E0
    .asciz "../z_en_ma3.c"
    .balign 4

glabel D_80AA38F0
    .asciz "../z_en_ma3.c"
    .balign 4

glabel jtbl_80AA3900
.word L80AA2E40
.word L80AA2E40
.word L80AA2D20
.word L80AA2E40
.word L80AA2C8C
.word L80AA2C20
.word L80AA2E40
.word L80AA2E40
.word L80AA2E40
.word L80AA2E40
glabel jtbl_80AA3928
.word L80AA2D80
.word L80AA2E3C
.word L80AA2E08
.word L80AA2E1C
.word L80AA2DB0
.word L80AA2E3C
.word L80AA2E3C
.word L80AA2E3C
.word L80AA2E3C
.word L80AA2E3C
.word L80AA2E3C
.word L80AA2E3C
.word L80AA2E3C
.word L80AA2E3C
.word L80AA2E3C
.word L80AA2E3C
.word L80AA2E3C
.word L80AA2E3C
.word L80AA2DB0
glabel D_80AA3974
 .word 0x40490FDB
glabel D_80AA3978
 .word 0x40490FDB
glabel D_80AA397C
 .word 0x40490FDB
glabel D_80AA3980
 .word 0x40490FDB, 0x00000000, 0x00000000, 0x00000000


