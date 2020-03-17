.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_808B4BB0

.incbin "baserom/ovl_Bg_Spot15_Saku", 0x360, 0x00000080
