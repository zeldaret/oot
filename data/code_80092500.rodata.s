.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_8013E9E0
    .asciz "\x1b[43;30mquake: too many request %d is changed new one !!\n\x1b[m"
    .balign 4

glabel D_8013EA20
    .asciz "\x1b[43;30mquake: stopped! 'coz camera [%d] killed!!\n\x1b[m"
    .balign 4

glabel jtbl_8013EA58
    .word L80092D48
    .word L80092D50
    .word L80092D9C
    .word L80092D58
    .word L80092D9C
    .word L80092D9C
    .word L80092D9C
    .word L80092D60
    .word L80092D9C
    .word L80092D9C
    .word L80092D9C
    .word L80092D9C
    .word L80092D9C
    .word L80092D9C
    .word L80092D9C
    .word L80092D68
    .word L80092D9C
    .word L80092D9C
    .word L80092D9C
    .word L80092D9C
    .word L80092D9C
    .word L80092D9C
    .word L80092D9C
    .word L80092D9C
    .word L80092D9C
    .word L80092D9C
    .word L80092D9C
    .word L80092D9C
    .word L80092D9C
    .word L80092D9C
    .word L80092D9C
    .word L80092D70

glabel D_8013EAD8
    .float 0.005
