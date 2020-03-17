.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B17DE0
    .asciz "[32m☆☆☆☆☆ もういてる原 ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80B17E10
 .word 0x0A0A0000
glabel D_80B17E14
    .asciz "[35m☆☆☆☆☆ ばぅん！ ☆☆☆☆☆ %x\n[m"
    .balign 4

glabel D_80B17E40
    .asciz "../z_en_takara_man.c"
    .balign 4

glabel D_80B17E58
    .asciz "../z_en_takara_man.c"
    .balign 4



