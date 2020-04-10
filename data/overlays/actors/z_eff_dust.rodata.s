.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8099EB70
    .asciz "../z_eff_dust.c"
    .balign 4

glabel D_8099EB80
    .asciz "../z_eff_dust.c"
    .balign 4

glabel D_8099EB90
    .asciz "../z_eff_dust.c"
    .balign 4

glabel D_8099EBA0
    .asciz "../z_eff_dust.c"
    .balign 4

glabel D_8099EBB0
    .asciz "../z_eff_dust.c"
    .balign 4

glabel D_8099EBC0
    .asciz "../z_eff_dust.c"
    .balign 4

glabel D_8099EBD0
    .asciz "../z_eff_dust.c"
    .balign 4

glabel jtbl_8099EBE0
.word L8099D998
.word L8099D9E4
.word L8099DA30
.word L8099DA6C
.word L8099DAA8
glabel D_8099EBF4
    .float 0.8
    .balign 4

glabel D_8099EBF8
    .float 0.1
    .balign 4

glabel D_8099EBFC
    .float 0.8
    .balign 4

glabel D_8099EC00
    .float 0.05
    .balign 4

glabel D_8099EC04
    .float 0.03
    .balign 4

glabel D_8099EC08
    .float 0.2
    .balign 4

glabel D_8099EC0C
    .float 0.1
    .balign 4

glabel D_8099EC10
    .float 3000.0
    .balign 4

glabel D_8099EC14
    .float 4500.0
    .balign 4

glabel D_8099EC18
    .float 2500.0
    .balign 4

glabel D_8099EC1C
 .word 0x4604D000
glabel D_8099EC20
 .word 0x44D48000
glabel D_8099EC24
    .float 5000.0
    .balign 4

glabel D_8099EC28
 .word 0x3F59999A, 0x00000000


