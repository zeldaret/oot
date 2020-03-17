.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809C34D0
    .asciz "../z_en_bom.c"
    .balign 4

glabel D_809C34E0
    .asciz "../z_en_bom.c"
    .balign 4

glabel D_809C34F0
    .asciz "../z_en_bom.c"
    .balign 4

glabel D_809C3500
    .asciz "../z_en_bom.c"
    .balign 4

glabel D_809C3510
 .word 0x3F333333
glabel D_809C3514
 .word 0xBE99999A
glabel D_809C3518
 .word 0xBF99999A
glabel D_809C351C
 .word 0x3E4CCCCD
glabel D_809C3520
 .word 0x3E4CCCCD
glabel D_809C3524
 .word 0x3B03126F
glabel D_809C3528
 .word 0x3C23D70A, 0x00000000


