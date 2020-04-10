.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_808BE420
    .asciz "../z_bg_vb_sima.c"
    .balign 4

glabel D_808BE434
    .asciz "../z_bg_vb_sima.c"
    .balign 4

glabel D_808BE448
    .asciz "../z_bg_vb_sima.c"
    .balign 4

glabel D_808BE45C
    .float 0.4
    .balign 4

glabel D_808BE460
 .word 0x3EA8F5C3
glabel D_808BE464
    .float 0.05
    .balign 4

glabel D_808BE468
    .float 0.05
    .balign 4

glabel D_808BE46C
 .word 0xBE99999A


