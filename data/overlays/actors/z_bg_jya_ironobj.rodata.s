.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80899560
    .asciz "Error 攻撃方法が分からない(%s %d)\n"
    .balign 4

glabel D_80899584
    .asciz "../z_bg_jya_ironobj.c"
    .balign 4

glabel D_8089959C
    .asciz "¢ attack_type(%d)\n"
    .balign 4

glabel D_808995B0
    .asciz "Error 攻撃方法が分からない(%s %d)\n"
    .balign 4

glabel D_808995D4
    .asciz "../z_bg_jya_ironobj.c"
    .balign 4

glabel D_808995EC
    .asciz "¢ attack_type(%d)\n"
    .balign 4

glabel D_80899600
 .word 0x3DCCCCCD
glabel D_80899604
 .word 0x3F4CCCCD
glabel D_80899608
 .word 0x3D042108
glabel D_8089960C
 .word 0x3E851EB8
glabel D_80899610
 .word 0x3DCCCCCD
glabel D_80899614
 .word 0x3F4CCCCD
glabel D_80899618
 .word 0x3D042108
glabel D_8089961C
 .word 0x3E851EB8


