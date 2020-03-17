.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_80BA5CE0

.incbin "baserom/ovl_Object_Kankyo", 0x3240, 0x00000390
