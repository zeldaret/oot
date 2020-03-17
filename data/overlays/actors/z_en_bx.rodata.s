.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809D2570
    .asciz "../z_en_bx.c"
    .balign 4

glabel D_809D2580
    .asciz "../z_en_bx.c"
    .balign 4

glabel D_809D2590
    .asciz "../z_en_bx.c"
    .balign 4

glabel D_809D25A0
    .asciz "../z_en_bx.c"
    .balign 4

glabel D_809D25B0
 .word 0x3C23D70A
glabel D_809D25B4
 .word 0x3CF5C28F
glabel D_809D25B8
 .word 0x3BF5C28F
glabel D_809D25BC
 .word 0x3C75C28F


