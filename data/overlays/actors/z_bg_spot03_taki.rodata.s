.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_808AE3C0
    .asciz "../z_bg_spot03_taki.c"
    .balign 4

glabel D_808AE3D8
    .asciz "../z_bg_spot03_taki.c"
    .balign 4

glabel D_808AE3F0
 .word 0x2E2E2F7A, 0x5F62675F, 0x73706F74, 0x30335F74, 0x616B692E, 0x63000000, 0x00000000, 0x00000000


