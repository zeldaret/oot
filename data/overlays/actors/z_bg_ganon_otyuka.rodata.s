.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80877EC0
 .word 0x1B5B3332, 0x6D000000
glabel D_80877EC8

    .asciz "WHY !!!!!!!!!!!!!!!!\n"
    .balign 4

glabel D_80877EE0
 .word 0x1B5B6D00
glabel D_80877EE4
 .word 0x4F544320, 0x4F20310A, 0x00000000
glabel D_80877EF0
 .word 0x4F544320, 0x4F20320A, 0x00000000
glabel D_80877EFC
 .word 0x4F544320, 0x4F20330A, 0x00000000
glabel D_80877F08

    .asciz "MODE DOWN\n"
    .balign 4

glabel D_80877F14

    .asciz "MODE DOWN END\n"
    .balign 4

glabel D_80877F24

    .asciz "../z_bg_ganon_otyuka.c"
    .balign 4

glabel D_80877F3C

    .asciz "../z_bg_ganon_otyuka.c"
    .balign 4

glabel D_80877F54

    .asciz "../z_bg_ganon_otyuka.c"
    .balign 4

glabel D_80877F6C

    .asciz "../z_bg_ganon_otyuka.c"
    .balign 4

glabel D_80877F84

    .asciz "../z_bg_ganon_otyuka.c"
    .balign 4

glabel D_80877F9C
 .word 0x45992000
glabel D_80877FA0
 .word 0xC43B8000
glabel D_80877FA4
 .word 0x3DCCCCCD
glabel D_80877FA8
 .word 0xC43B8000
glabel D_80877FAC
 .word 0x40490FDB
glabel D_80877FB0
 .word 0x40490FDB
glabel D_80877FB4
 .word 0x3E99999A, 0x00000000, 0x00000000


