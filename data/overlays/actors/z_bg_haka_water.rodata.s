.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_808824C0
    .asciz "../z_bg_haka_water.c"
    .balign 4

glabel D_808824D8
    .asciz "../z_bg_haka_water.c"
    .balign 4

glabel D_808824F0
    .asciz "../z_bg_haka_water.c"
    .balign 4

glabel D_80882508
    .asciz "../z_bg_haka_water.c"
    .balign 4

glabel D_80882520
 .word 0x3F43D70A
glabel D_80882524
 .word 0x3DCCCCCD
glabel D_80882528
 .word 0x40A33333, 0x00000000


