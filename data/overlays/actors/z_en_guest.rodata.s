.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80A50BB0
 .word 0x1B5B3431, 0x3B33376D, 0x00000000
glabel D_80A50BBC
    .asciz "%s[%d] : バンクが無いよ！！\n"
    .balign 4

glabel D_80A50BDC
    .asciz "../z_en_guest.c"
    .balign 4

glabel D_80A50BEC
 .word 0x1B5B6D00
glabel D_80A50BF0
 .word 0x30000000
glabel D_80A50BF4
    .asciz "../z_en_guest.c"
    .balign 4

glabel D_80A50C04
    .asciz "../z_en_guest.c"
    .balign 4

glabel D_80A50C14
    .asciz "../z_en_guest.c"
    .balign 4

glabel D_80A50C24
    .asciz "../z_en_guest.c"
    .balign 4

glabel D_80A50C34
    .asciz "../z_en_guest.c"
    .balign 4

glabel D_80A50C44
 .word 0x40490FDB
glabel D_80A50C48
 .word 0x40490FDB
glabel D_80A50C4C
 .word 0x40490FDB
glabel D_80A50C50
 .word 0x40490FDB, 0x00000000, 0x00000000, 0x00000000


