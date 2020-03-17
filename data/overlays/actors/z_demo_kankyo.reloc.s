.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_8098CB60

.incbin "baserom/ovl_Demo_Kankyo", 0x3CE0, 0x00000420
