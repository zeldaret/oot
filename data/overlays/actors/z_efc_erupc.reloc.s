.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_8099D830
    .incbin "baserom/ovl_Efc_Erupc", 0xB80, 0x000000A0
