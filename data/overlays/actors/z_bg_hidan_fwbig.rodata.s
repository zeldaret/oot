.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80887F00
    .asciz "../z_bg_hidan_fwbig.c"
    .balign 4

glabel D_80887F18
    .asciz "../z_bg_hidan_fwbig.c"
    .balign 4

glabel D_80887F30
    .asciz "../z_bg_hidan_fwbig.c"
    .balign 4

glabel D_80887F48
 .word 0x445D599A
glabel D_80887F4C
 .word 0x445D599A
glabel D_80887F50
 .word 0x448FC000, 0x00000000, 0x00000000, 0x00000000


