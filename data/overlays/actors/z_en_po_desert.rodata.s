.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80AD39F0
    .asciz "../z_en_po_desert.c"
    .balign 4

glabel D_80AD3A04
    .asciz "../z_en_po_desert.c"
    .balign 4

glabel D_80AD3A18
    .asciz "../z_en_po_desert.c"
    .balign 4

glabel D_80AD3A2C
 .word 0x3E20D97C
glabel D_80AD3A30
 .word 0x3DC90FDB, 0x00000000, 0x00000000, 0x00000000


