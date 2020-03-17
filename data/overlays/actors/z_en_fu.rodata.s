.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80A1E470
    .asciz "../z_en_fu.c"
    .balign 4

glabel D_80A1E480
    .asciz "../z_en_fu.c"
    .balign 4


