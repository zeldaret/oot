.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8088AE90
    .asciz "Error : 炎の神殿 壊れる壁 の arg_data が判別出来ない(%s %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_8088AEE0
    .asciz "../z_bg_hidan_kowarerukabe.c"
    .balign 4

glabel D_8088AF00
    .asciz "(hidan 爆弾で壊れる 壁 床)(arg_data 0x%04x)\n"
    .balign 4

glabel D_8088AF30
    .asciz "../z_bg_hidan_kowarerukabe.c"
    .balign 4

glabel D_8088AF50
    .asciz "../z_bg_hidan_kowarerukabe.c"
    .balign 4

glabel D_8088AF70
    .asciz "../z_bg_hidan_kowarerukabe.c"
    .balign 4

glabel D_8088AF90
 .word 0x3FB33333
glabel D_8088AF94
 .word 0x3FB33333
glabel D_8088AF98
 .word 0x3FCCCCCD, 0x00000000


