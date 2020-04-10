.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B116A0
    .asciz "\n\n"
    .balign 4

glabel D_80B116A4
    .asciz "[32m☆☆☆☆☆ 親父登場！！むほほほほほほほーん ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80B116E8
    .asciz "[32m☆☆☆☆☆ Equip_Pachinko ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80B1171C
    .asciz "[32m☆☆☆☆☆ Equip_Bow ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80B11748
    .asciz "[32m☆☆☆☆☆ 正常終了 ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80B11774
    .asciz "[34m再挑戦だぜ！ベイビー！[m\n"
    .balign 4

.align 4

