.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_809F7FA0
    .incbin "baserom/ovl_En_Dodojr", 0x1BE0, 0x000002B0
