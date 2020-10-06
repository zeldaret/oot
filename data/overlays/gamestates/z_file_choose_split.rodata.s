.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.balign 16

glabel D_80812A60
    .asciz "connect_alpha=%d  decision_alpha[%d]=%d\n"
    .balign 4