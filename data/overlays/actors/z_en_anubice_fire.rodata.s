.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809B3290
    .asciz "../z_en_anubice_fire.c"
    .balign 4

glabel D_809B32A8
    .asciz "../z_en_anubice_fire.c"
    .balign 4

glabel D_809B32C0
    .asciz "../z_en_anubice_fire.c"
    .balign 4

glabel D_809B32D8
 .word 0x40490FDB
glabel D_809B32DC
 .word 0x40490FDB
glabel D_809B32E0
 .word 0x3DCCCCCD
glabel D_809B32E4
 .word 0x3ECCCCCD
glabel D_809B32E8
 .word 0x3F19999A
glabel D_809B32EC
 .word 0x3E4CCCCD
glabel D_809B32F0
 .word 0x3DCCCCCD, 0x00000000, 0x00000000, 0x00000000


