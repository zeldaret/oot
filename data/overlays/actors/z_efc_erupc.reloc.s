.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_8099D830

.incbin "baserom/ovl_Efc_Erupc", 0xB80, 0x000000A0
