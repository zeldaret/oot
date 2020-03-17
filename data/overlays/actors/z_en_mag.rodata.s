.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80AA5F10
    .asciz "../z_en_mag.c"
    .balign 4

glabel D_80AA5F20
    .asciz "../z_en_mag.c"
    .balign 4

glabel D_80AA5F30
 .word 0x3F4CCCCD
glabel D_80AA5F34
 .word 0x4019999A, 0x00000000, 0x00000000


