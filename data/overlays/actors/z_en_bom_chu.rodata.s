.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809C6DA0
    .asciz "../z_en_bom_chu.c"
    .balign 4

glabel D_809C6DB4
    .asciz "../z_en_bom_chu.c"
    .balign 4

glabel D_809C6DC8
    .asciz "../z_en_bom_chu.c"
    .balign 4

glabel D_809C6DDC
 .word 0x38000100
glabel D_809C6DE0
 .word 0x3A83126F
glabel D_809C6DE4
 .word 0x3A83126F, 0x00000000, 0x00000000


