.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809B3290
    .asciz "../z_en_anubice_fire.c"
    .balign 4

glabel D_809B32A8
    .asciz "../z_en_anubice_fire.c"
    .balign 4

glabel D_809B32C0
    .asciz "../z_en_anubice_fire.c"
    .balign 4

glabel D_809B32D8
    .float 3.14159274101
    .balign 4

glabel D_809B32DC
    .float 3.14159274101
    .balign 4

glabel D_809B32E0
    .float 0.1
    .balign 4

glabel D_809B32E4
    .float 0.4
    .balign 4

glabel D_809B32E8
    .float 0.6
    .balign 4

glabel D_809B32EC
    .float 0.2
    .balign 4

glabel D_809B32F0
 .word 0x3DCCCCCD, 0x00000000, 0x00000000, 0x00000000


