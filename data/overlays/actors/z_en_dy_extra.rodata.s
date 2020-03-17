.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809FFC70
 .word 0x0A0A0000
glabel D_809FFC74
    .asciz "[33m☆☆☆☆☆ 大妖精効果 ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_809FFCA4
    .asciz "../z_en_dy_extra.c"
    .balign 4

glabel D_809FFCB8
    .asciz "../z_en_dy_extra.c"
    .balign 4

glabel D_809FFCCC
    .asciz "../z_en_dy_extra.c"
    .balign 4

glabel D_809FFCE0
 .word 0x3CCCCCCD
glabel D_809FFCE4
 .word 0x3D1FBE77
glabel D_809FFCE8
 .word 0xBE4CCCCD
glabel D_809FFCEC
 .word 0x3CA3D70A


