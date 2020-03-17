.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8086FA90
 .word 0x0A0A0000
glabel D_8086FA94

    .asciz "[32m ☆☆☆☆☆ ボーリングおじゃま壁発生 ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_8086FAD0
 .word 0x0A0A0000
glabel D_8086FAD4

    .asciz "../z_bg_bowl_wall.c"
    .balign 4

glabel D_8086FAE8

    .asciz "../z_bg_bowl_wall.c"
    .balign 4

glabel D_8086FAFC

    .asciz "../z_bg_bowl_wall.c"
    .balign 4

glabel D_8086FB10
 .word 0x403F5C29, 0x00000000, 0x00000000, 0x00000000


