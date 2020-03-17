.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_80884FE0

.incbin "baserom/ovl_Bg_Heavy_Block", 0x1850, 0x000001C0
