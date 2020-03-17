.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80A6F4E0
    .asciz "[36m ヒヨコの店(子人の時) \n[m"
    .balign 4

glabel D_80A6F500
 .word func_80A6F390
.word L80A6F3BC
.word func_80A6F3C8
.word L80A6F384
.word L80A6F384
.word 0x00000000, 0x00000000, 0x00000000


