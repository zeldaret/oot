.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_8014A8B0
    .asciz "m1"
    .balign 4

glabel D_8014A8B4
    .asciz "../mtxuty-cvt.c"
    .balign 4

glabel D_8014A8C4
    .asciz "m2"
    .balign 4

glabel D_8014A8C8
    .asciz "../mtxuty-cvt.c"
    .balign 4

glabel D_8014A8D8
    .asciz "m1"
    .balign 4

glabel D_8014A8DC
    .asciz "../mtxuty-cvt.c"
    .balign 4

glabel D_8014A8EC
    .asciz "m2"
    .balign 4

glabel D_8014A8F0
    .asciz "../mtxuty-cvt.c"
    .balign 4
