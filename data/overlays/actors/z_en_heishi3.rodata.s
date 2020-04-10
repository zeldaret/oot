.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80A55F90
    .asciz "[32m☆☆☆☆☆ 城門兵パワーアップ ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80A55FC4
    .asciz "[32m☆☆☆☆☆ 発見！ ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80A55FEC
    .asciz "[32m☆☆☆☆☆ 発見！ ☆☆☆☆☆ \n[m"
    .balign 4

.align 4

