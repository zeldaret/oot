.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8088CDA0
    .asciz "../z_bg_hidan_rsekizou.c"
    .balign 4

glabel D_8088CDBC
    .asciz "../z_bg_hidan_rsekizou.c"
    .balign 4

glabel D_8088CDD8
    .asciz "../z_bg_hidan_rsekizou.c"
    .balign 4

glabel D_8088CDF4
    .asciz "../z_bg_hidan_rsekizou.c"
    .balign 4

glabel D_8088CE10
 .word 0x3E124925
glabel D_8088CE14
 .word 0x3EAAAAAB
glabel D_8088CE18
 .word 0x3F333333
glabel D_8088CE1C
 .word 0x3F333333


