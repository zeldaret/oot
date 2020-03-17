.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_80877FC0

.incbin "baserom/ovl_Bg_Ganon_Otyuka", 0x26A0, 0x000001A0
