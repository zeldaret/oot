.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80A6AFB0
    .asciz "../z_en_horse_link_child.c"
    .balign 4

glabel D_80A6AFCC
    .asciz "../z_en_horse_link_child.c"
    .balign 4

glabel D_80A6AFE8
 .word 0x3EAAAAAB
glabel D_80A6AFEC
 .word 0x3E4CCCCD
glabel D_80A6AFF0
 .word 0x3F350481
glabel D_80A6AFF4
 .word 0x3CCCCCCD, 0x00000000, 0x00000000


