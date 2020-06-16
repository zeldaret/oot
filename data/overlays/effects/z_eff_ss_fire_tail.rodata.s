.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_809A5DE0
    .asciz "../z_eff_fire_tail.c"
    .balign 4

glabel D_809A5DF8
    .asciz "../z_eff_fire_tail.c"
    .balign 4

glabel D_809A5E10
    .asciz "../z_eff_fire_tail.c"
    .balign 4

glabel D_809A5E28
    .float 0.1
    .balign 4

glabel D_809A5E2C
    .float 9.58738019108e-05
    .balign 4

glabel D_809A5E30
 .word 0x3C8EFA35
glabel D_809A5E34
 .word 0x3727C5AD
glabel D_809A5E38
    .float 0.1
    .balign 4

glabel D_809A5E3C
    .float 0.01
    .balign 4

glabel D_809A5E40
 .word 0x3F666666, 0x00000000, 0x00000000, 0x00000000


