.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_808A7DB0
    .asciz "../z_bg_po_event.c"
    .balign 4

glabel D_808A7DC4
    .asciz "../z_bg_po_event.c"
    .balign 4

glabel D_808A7DD8
    .asciz "../z_bg_po_event.c"
    .balign 4

glabel D_808A7DEC
 .word 0x4019999A
glabel D_808A7DF0
 .word 0x3FE8B439
glabel D_808A7DF4
 .word 0x44504000
glabel D_808A7DF8
 .word 0x44504000
glabel D_808A7DFC
    .float 0.1
    .balign 4

glabel D_808A7E00
 .word 0x44504000
glabel D_808A7E04
    .float 0.0025
    .balign 4

glabel D_808A7E08
    .float 0.3
    .balign 4

glabel D_808A7E0C
    .float 0.4
    .balign 4


