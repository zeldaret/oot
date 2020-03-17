.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_8097C280

.incbin "baserom/ovl_Demo_Gj", 0x3950, 0x000005F0
