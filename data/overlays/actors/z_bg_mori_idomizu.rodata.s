.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_808A4C40
    .asciz "Error : バンク危険！(arg_data 0x%04x)(%s %d)\n"
    .balign 4

glabel D_808A4C70
    .asciz "../z_bg_mori_idomizu.c"
    .balign 4

glabel D_808A4C88
    .asciz "(森の神殿 井戸水)(arg_data 0x%04x)\n"
    .balign 4

glabel D_808A4CAC
    .asciz "../z_bg_mori_idomizu.c"
    .balign 4

glabel D_808A4CC4
    .asciz "../z_bg_mori_idomizu.c"
    .balign 4

glabel D_808A4CDC
    .asciz "../z_bg_mori_idomizu.c"
    .balign 4

glabel D_808A4CF4
 .word 0x3F8CCCCD
glabel D_808A4CF8
 .word 0xC4E38000, 0x00000000


