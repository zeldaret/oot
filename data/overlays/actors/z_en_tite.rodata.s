.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B1B6F0
 .word 0x0A0A0000
glabel D_80B1B6F4
    .asciz "[32m☆☆☆☆☆ 同時発生数 ☆☆☆☆☆%d\n[m"
    .balign 4

glabel D_80B1B720
 .word 0x0A0A0000
glabel D_80B1B724
    .asciz "../z_en_tite.c"
    .balign 4

glabel D_80B1B734
    .asciz "../z_en_tite.c"
    .balign 4

glabel D_80B1B744
 .word 0x3C23D70A
glabel D_80B1B748
 .word 0x3C23D70A, 0x00000000


