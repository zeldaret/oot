.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80A50BB0
    .asciz "[41;37m"
    .balign 4

glabel D_80A50BBC
    .asciz "%s[%d] : バンクが無いよ！！\n"
    .balign 4

glabel D_80A50BDC
    .asciz "../z_en_guest.c"
    .balign 4

glabel D_80A50BEC
    .asciz "\x1b[m"
    .balign 4

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
    .float 3.14159274101
    .balign 4

glabel D_80A50C48
    .float 3.14159274101
    .balign 4

glabel D_80A50C4C
    .float 3.14159274101
    .balign 4

glabel D_80A50C50
 .word 0x40490FDB, 0x00000000, 0x00000000, 0x00000000


