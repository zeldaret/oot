.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_80B0F2C0

.incbin "baserom/ovl_En_Sw", 0x3510, 0x00000370
