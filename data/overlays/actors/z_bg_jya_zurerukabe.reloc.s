.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_8089BB50

.incbin "baserom/ovl_Bg_Jya_Zurerukabe", 0x710, 0x00000120
