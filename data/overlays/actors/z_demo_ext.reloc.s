.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_80977D90

.incbin "baserom/ovl_Demo_Ext", 0xA00, 0x000000B0
