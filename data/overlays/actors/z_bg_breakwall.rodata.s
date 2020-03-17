.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80870970

    .asciz "../z_bg_breakwall.c"
    .balign 4

glabel D_80870984

    .asciz "../z_bg_breakwall.c"
    .balign 4

glabel D_80870998

    .asciz "../z_bg_breakwall.c"
    .balign 4

glabel D_808709AC
 .word 0x455AC000
glabel D_808709B0
 .word 0x3A83126F
glabel D_808709B4
 .word 0x3F19999A
glabel D_808709B8
 .word 0x453B8000
glabel D_808709BC
 .word 0x40CCCCCD


