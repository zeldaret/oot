.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_808AB9E0

.incbin "baserom/ovl_Bg_Spot01_Idohashira", 0xD00, 0x00000100
