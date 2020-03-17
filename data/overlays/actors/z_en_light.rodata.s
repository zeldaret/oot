.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80A9E8C0
    .asciz "../z_en_light.c"
    .balign 4

glabel D_80A9E8D0
    .asciz "../z_en_light.c"
    .balign 4

glabel D_80A9E8E0
    .asciz "../z_en_light.c"
    .balign 4

glabel D_80A9E8F0
 .word 0x38D1B717, 0x00000000
glabel D_80A9E8F8
 .word 0x3F1A36E2, 0xEB1C432D
glabel D_80A9E900
 .word 0x3DCCCCCD
glabel D_80A9E904
 .word 0x3DCCCCCD
glabel D_80A9E908
 .word 0x3F1A36E2, 0xEB1C432D
glabel D_80A9E910
 .word 0x38C90FDB
glabel D_80A9E914
 .word 0x40490FDB, 0x00000000, 0x00000000


