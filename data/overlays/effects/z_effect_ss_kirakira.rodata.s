.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809AAE10
    .asciz "../z_eff_ss_kirakira.c"
    .balign 4

glabel D_809AAE28
    .asciz "../z_eff_ss_kirakira.c"
    .balign 4

glabel D_809AAE40
 .word 0x461C4000
glabel D_809AAE44
 .word 0x3ECCCCCD
glabel D_809AAE48
 .word 0x3E4CCCCD
glabel D_809AAE4C
 .word 0x3ECCCCCD
glabel D_809AAE50
 .word 0x3E4CCCCD
glabel D_809AAE54
 .word 0x3F733333
glabel D_809AAE58
 .word 0x3E4CCCCD
glabel D_809AAE5C
 .word 0x3E4CCCCD


