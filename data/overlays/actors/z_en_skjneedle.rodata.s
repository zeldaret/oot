.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B021C0
    .asciz "../z_en_skj_needle.c"
    .balign 4

glabel D_80B021D8
    .asciz "../z_en_skj_needle.c"
    .balign 4

glabel D_80B021F0
 .word 0x2E2E2F7A, 0x5F656E5F, 0x736B6A5F, 0x6E656564, 0x6C652E63, 0x00000000, 0x00000000, 0x00000000


