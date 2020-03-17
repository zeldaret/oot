.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80892AB0

    .asciz "../z_bg_ingate.c"
    .balign 4

glabel D_80892AC4

    .asciz "../z_bg_ingate.c"
    .balign 4

glabel D_80892AD8
 .word 0x2E2E2F7A, 0x5F62675F, 0x696E6761, 0x74652E63, 0x00000000, 0x00000000


