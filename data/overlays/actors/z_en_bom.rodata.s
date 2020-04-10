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
    .float 0.7
    .balign 4

glabel D_809C3514
 .word 0xBE99999A
glabel D_809C3518
    .float -1.2
    .balign 4

glabel D_809C351C
    .float 0.2
    .balign 4

glabel D_809C3520
    .float 0.2
    .balign 4

glabel D_809C3524
    .float 0.002
    .balign 4

glabel D_809C3528
 .word 0x3C23D70A, 0x00000000


