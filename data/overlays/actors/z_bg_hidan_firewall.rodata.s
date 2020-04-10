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
    .float 0.12
    .balign 4

glabel D_80886D88
    .float 0.01
    .balign 4

glabel D_80886D8C
    .float 0.01
    .balign 4



