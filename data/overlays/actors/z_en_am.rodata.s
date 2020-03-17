.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809B0160
    .asciz "../z_en_am.c"
    .balign 4

glabel D_809B0170
    .asciz "../z_en_am.c"
    .balign 4

glabel D_809B0180
 .word 0x458CA000
glabel D_809B0184
 .word 0x3FB33333, 0x00000000, 0x00000000


