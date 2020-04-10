.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8089B210
    .asciz "../z_bg_jya_megami.c"
    .balign 4

glabel D_8089B228
    .asciz "../z_bg_jya_megami.c"
    .balign 4

glabel D_8089B240
    .asciz "../z_bg_jya_megami.c"
    .balign 4

glabel D_8089B258
    .asciz "../z_bg_jya_megami.c"
    .balign 4

glabel D_8089B270
    .asciz "../z_bg_jya_megami.c"
    .balign 4

glabel D_8089B288
    .asciz "../z_bg_jya_megami.c"
    .balign 4

glabel D_8089B2A0
 .word 0x3EE66666
glabel D_8089B2A4
    .float 0.7
    .balign 4

glabel D_8089B2A8
    .float 0.04
    .balign 4

glabel D_8089B2AC
    .float 0.05
    .balign 4

glabel D_8089B2B0
 .word 0x3D89374C
glabel D_8089B2B4
 .word 0x3F7EB852
glabel D_8089B2B8
    .float 0.6
    .balign 4

glabel D_8089B2BC
    .float 9.58738019108e-05
    .balign 4

glabel D_8089B2C0
 .word 0x3DCCCCCD, 0x00000000, 0x00000000, 0x00000000


