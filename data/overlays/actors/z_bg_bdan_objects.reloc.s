.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_8086CE70

.incbin "baserom/ovl_Bg_Bdan_Objects", 0x11D0, 0x000001A0
