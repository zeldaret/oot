.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80894410
    .asciz "../z_bg_jya_block.c"
    .balign 4

glabel D_80894424
    .asciz "../z_bg_jya_block.c"
    .balign 4

glabel D_80894438
    .asciz "../z_bg_jya_block.c"
    .balign 4

.balign 16

