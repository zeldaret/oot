.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80A3E390
    .asciz "[32m%s[%d] : 中ゴロン[%d][m\n"
    .balign 4

glabel D_80A3E3B0
    .asciz "../z_en_gm.c"
    .balign 4

glabel D_80A3E3C0
 .word 0x1B5B3431, 0x3B33376D, 0x00000000
glabel D_80A3E3CC
 .word 0xA5E2A5C7, 0xA5EB20A5, 0xD0A5F3A5, 0xAFA4ACCC, 0xB5A4A4A4, 0xE8A1AAA1, 0xAAA1CAC3, 0xE6A5B4A5, 0xEDA5F3A1, 0xCB0A0000
glabel D_80A3E3F4
 .word 0x1B5B6D00
glabel D_80A3E3F8
 .word 0x30000000
glabel D_80A3E3FC
    .asciz "../z_en_gm.c"
    .balign 4

glabel D_80A3E40C
    .asciz "../z_en_gm.c"
    .balign 4

glabel D_80A3E41C
    .asciz "../z_en_gm.c"
    .balign 4

glabel D_80A3E42C
 .word 0x461C4000
glabel D_80A3E430
 .word 0x461C4000, 0x00000000, 0x00000000, 0x00000000


