.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8087B590
    .asciz "../z_bg_gnd_soulmeiro.c"
    .balign 4

glabel D_8087B5A8
    .asciz "../z_bg_gnd_soulmeiro.c"
    .balign 4

glabel D_8087B5C0
    .asciz "../z_bg_gnd_soulmeiro.c"
    .balign 4

glabel D_8087B5D8
 .word 0x462AA800
glabel D_8087B5DC
 .word 0x3C088889
glabel D_8087B5E0
 .word 0x3F333333, 0x00000000, 0x00000000, 0x00000000


