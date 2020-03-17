.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B30D80
    .asciz "../z_en_wallmas.c"
    .balign 4

glabel D_80B30D94
    .asciz "../z_en_wallmas.c"
    .balign 4

glabel D_80B30DA8
    .asciz "../z_en_wallmas.c"
    .balign 4

glabel D_80B30DBC
    .asciz "../z_en_wallmas.c"
    .balign 4

glabel D_80B30DD0
    .asciz "../z_en_wallmas.c"
    .balign 4

glabel D_80B30DE4
    .asciz "../z_en_wallmas.c"
    .balign 4

glabel D_80B30DF8
 .word 0x3BCCCCCD
glabel D_80B30DFC
 .word 0x3F860A92
glabel D_80B30E00
 .word 0x3E860A92, 0x00000000, 0x00000000, 0x00000000


