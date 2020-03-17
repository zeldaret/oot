.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8089C0D0
    .asciz "../z_bg_menkuri_eye.c"
    .balign 4

glabel D_8089C0E8
    .asciz "../z_bg_menkuri_eye.c"
    .balign 4

glabel D_8089C100
 .word 0x2E2E2F7A, 0x5F62675F, 0x6D656E6B, 0x7572695F, 0x6579652E, 0x63000000, 0x00000000, 0x00000000

