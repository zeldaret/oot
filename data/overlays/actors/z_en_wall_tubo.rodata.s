.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B2F370
 .word 0x0A0A0000
glabel D_80B2F374
    .asciz "[33m☆☆☆☆☆ 壁のツボ ☆☆☆☆☆ \n[m"
    .balign 4

.balign 4

glabel D_80B2F3A0
    .asciz "[32m☆☆☆☆ やった原！ ☆☆☆☆☆ \n[m"
    .balign 4

.balign 4

glabel D_80B2F3CC
    .asciz "[33m☆☆☆☆ やった原！ ☆☆☆☆☆ \n[m"
    .balign 4

.balign 4

glabel D_80B2F3F8
    .asciz "[34m☆☆☆☆ やった原！ ☆☆☆☆☆ \n[m"
    .balign 4

.balign 4

glabel D_80B2F424
    .asciz "[35m☆☆☆☆ やった原！ ☆☆☆☆☆ \n[m"
    .balign 4

.balign 4

glabel D_80B2F450
    .asciz "[36m☆☆☆☆ やった原！ ☆☆☆☆☆ \n[m"
    .balign 4

.balign 16



