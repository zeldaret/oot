.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80A88D10
    .asciz "../z_en_jj.c"
    .balign 4

glabel D_80A88D20
    .asciz "../z_en_jj.c"
    .balign 4

glabel D_80A88D30
 .word 0xC4898000
glabel D_80A88D34
 .word 0x3D9CED28, 0x00000000, 0x00000000


