.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80BA28A0
    .asciz "時のブロック(ワープ２) (<arg> %04xH <type> color:%d range:%d)\n"
    .balign 4

glabel D_80BA28E0
 .word 0x1B5B3431, 0x3B33376D, 0x00000000
glabel D_80BA28EC
    .asciz "Error : 時のブロック(ワープ２)が対でセットされていません(%s %d)\n"
    .balign 4

glabel D_80BA2930
    .asciz "../z_obj_warp2block.c"
    .balign 4

glabel D_80BA2948
 .word 0x1B5B6D00
glabel D_80BA294C
    .asciz "../z_obj_warp2block.c"
    .balign 4

glabel D_80BA2964
    .asciz "../z_obj_warp2block.c"
    .balign 4

glabel D_80BA297C
    .asciz "../z_obj_warp2block.c"
    .balign 4

glabel D_80BA2994
 .word 0x3C23D70A, 0x00000000, 0x00000000


