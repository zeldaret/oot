.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8088F220
    .asciz "../z_bg_hidan_sima.c"
    .balign 4

glabel D_8088F238
    .asciz "../z_bg_hidan_sima.c"
    .balign 4

glabel D_8088F250
    .asciz "../z_bg_hidan_sima.c"
    .balign 4

glabel D_8088F268
    .asciz "../z_bg_hidan_sima.c"
    .balign 4

glabel D_8088F280
    .asciz "../z_bg_hidan_sima.c"
    .balign 4

glabel D_8088F298
 .word 0x3F9111F0, 0xC34C1A8B
glabel D_8088F2A0
 .word 0x400921FB, 0x60000000
glabel D_8088F2A8
 .word 0x3F9111F0, 0xC34C1A8B
glabel D_8088F2B0
 .word 0x400921FB, 0x60000000
glabel D_8088F2B8
 .word 0x3E20D97C
glabel D_8088F2BC
 .word 0x3ECCCCCD


