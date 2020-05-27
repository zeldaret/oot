.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_80A11A10
    .incbin "baserom/ovl_En_Fhg_Fire", 0x27B0, 0x00000210
