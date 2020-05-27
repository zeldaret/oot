.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_80A6B000
    .incbin "baserom/ovl_En_Horse_Link_Child", 0x1C30, 0x00000250
