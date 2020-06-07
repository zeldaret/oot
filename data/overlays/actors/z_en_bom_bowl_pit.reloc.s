.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_809C5790
    .incbin "baserom/ovl_En_Bom_Bowl_Pit", 0x950, 0x000000A0
