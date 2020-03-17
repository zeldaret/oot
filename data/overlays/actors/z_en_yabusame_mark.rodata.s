.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B43680
 .word 0x0A0A0000
glabel D_80B43684
    .asciz "[32m☆☆☆☆☆ やぶさめまと ☆☆☆☆☆ %x\n[m"
    .balign 4

glabel D_80B436B4
    .asciz "[32m☆☆☆☆☆ 種類インデックス 	   ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80B436EC
    .asciz "[35m☆☆☆☆☆ 種類       ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80B4371C
    .asciz "[36m☆☆☆☆☆ さらに分類 ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80B4374C
 .word 0x0A0A0000
glabel D_80B43750
    .asciz "[32m☆☆☆☆☆ posＸ ☆☆☆☆☆ %f\n[m"
    .balign 4

glabel D_80B43778
    .asciz "[32m☆☆☆☆☆ posＹ ☆☆☆☆☆ %f\n[m"
    .balign 4

glabel D_80B437A0
    .asciz "[32m☆☆☆☆☆ posＺ ☆☆☆☆☆ %f\n[m"
    .balign 4

glabel D_80B437C8
    .asciz "[33m☆☆☆☆☆ hitＸ ☆☆☆☆☆ %f\n[m"
    .balign 4

glabel D_80B437F0
    .asciz "[33m☆☆☆☆☆ hitＹ ☆☆☆☆☆ %f\n[m"
    .balign 4

glabel D_80B43818
    .asciz "[33m☆☆☆☆☆ hitＺ ☆☆☆☆☆ %f\n[m"
    .balign 4

glabel D_80B43840
    .asciz "[35m☆☆☆☆☆ 小    ☆☆☆☆☆ %f\n[m"
    .balign 4

glabel D_80B43868
    .asciz "[35m☆☆☆☆☆ 大    ☆☆☆☆☆ %f\n[m"
    .balign 4

glabel D_80B43890
    .asciz "[35m☆☆☆☆☆ point ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80B438B8
 .word 0x0A0A0000, 0x00000000


