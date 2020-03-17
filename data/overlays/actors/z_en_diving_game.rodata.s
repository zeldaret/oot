.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809EF0F0
    .asciz "[32m☆☆☆☆☆ 素もぐりＧＯ ☆☆☆☆☆ \n[m"
    .balign 4

.balign 4

glabel D_809EF120
    .asciz "[32m☆☆☆☆☆ もういてる原 ☆☆☆☆☆ \n[m"
    .balign 4

.balign 4

glabel D_809EF150
    .asciz "[32m☆☆☆☆☆ 正常終了 ☆☆☆☆☆ \n[m"
    .balign 4

.balign 4

glabel D_809EF17C
    .asciz "../z_en_diving_game.c"
    .balign 4

glabel D_809EF194
    .asciz "../z_en_diving_game.c"
    .balign 4

glabel D_809EF1AC
 .word 0x3C23D70A
glabel D_809EF1B0
 .word 0x3C54FDF3
glabel D_809EF1B4
 .word 0x3C656041
glabel D_809EF1B8
 .word 0x455AC000
glabel D_809EF1BC
 .word 0x3DCCCCCD
glabel D_809EF1C0
 .word 0x3D23D70A, 0x00000000, 0x00000000, 0x00000000


