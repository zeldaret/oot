.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80886D30
    .asciz "../z_bg_hidan_firewall.c"
    .balign 4

glabel D_80886D4C
    .asciz "../z_bg_hidan_firewall.c"
    .balign 4

glabel D_80886D68
    .asciz "../z_bg_hidan_firewall.c"
    .balign 4

glabel D_80886D84
 .word 0x3DF5C28F
glabel D_80886D88
 .word 0x3C23D70A
glabel D_80886D8C
 .word 0x3C23D70A


