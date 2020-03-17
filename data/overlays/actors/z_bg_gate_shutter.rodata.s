.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_808785B0
 .word 0x0A0A0000
glabel D_808785B4

    .asciz "[32m ☆☆☆☆☆ 柵でたなぁ ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_808785E0

    .asciz "../z_bg_gate_shutter.c"
    .balign 4

glabel D_808785F8

    .asciz "../z_bg_gate_shutter.c"
    .balign 4

glabel D_80878610

    .asciz "../z_bg_gate_shutter.c"
    .balign 4

glabel D_80878628
 .word 0xC4ABE000, 0x00000000


