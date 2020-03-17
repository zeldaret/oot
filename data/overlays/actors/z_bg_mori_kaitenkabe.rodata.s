.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_808A53E0
    .asciz "◯◯◯森の神殿オブジェクト【回転壁(arg_data : 0x%04x)】出現 \n"
    .balign 4

glabel D_808A5420
    .asciz "【回転壁】 バンク危険！(%s %d)\n"
    .balign 4

glabel D_808A5440
    .asciz "../z_bg_mori_kaitenkabe.c"
    .balign 4

glabel D_808A545C
    .asciz "../z_bg_mori_kaitenkabe.c"
    .balign 4

glabel D_808A5478
    .asciz "../z_bg_mori_kaitenkabe.c"
    .balign 4

glabel D_808A5494
    .asciz "../z_bg_mori_kaitenkabe.c"
    .balign 4

glabel D_808A54B0
 .word 0x3A83126F
glabel D_808A54B4
 .word 0x3A83126F
glabel D_808A54B8
 .word 0x43360B61
glabel D_808A54BC
 .word 0x3A83126F


