.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_808A89D0
    .asciz "../z_bg_po_syokudai.c"
    .balign 4

glabel D_808A89E8
    .asciz "../z_bg_po_syokudai.c"
    .balign 4

glabel D_808A8A00
    .asciz "../z_bg_po_syokudai.c"
    .balign 4

glabel D_808A8A18
    .asciz "../z_bg_po_syokudai.c"
    .balign 4

glabel D_808A8A30
 .word 0xC4C3C000
glabel D_808A8A34
 .word 0x3E99999A
glabel D_808A8A38
 .word 0x3F333333
glabel D_808A8A3C
 .word 0x38C90FDB
glabel D_808A8A40
 .word 0x3B30F27C, 0x00000000, 0x00000000, 0x00000000


