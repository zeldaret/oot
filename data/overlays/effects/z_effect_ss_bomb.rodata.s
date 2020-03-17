.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8099F5A0
    .asciz "../z_eff_ss_bomb.c"
    .balign 4

glabel D_8099F5B4
    .asciz "../z_eff_ss_bomb.c"
    .balign 4

glabel D_8099F5C8
 .word 0x3ECCCCCD
glabel D_8099F5CC
 .word 0x3E4CCCCD
glabel D_8099F5D0
 .word 0x3ECCCCCD
glabel D_8099F5D4
 .word 0x3E4CCCCD, 0x00000000, 0x00000000


