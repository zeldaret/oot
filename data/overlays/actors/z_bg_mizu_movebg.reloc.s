.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_8089EC90

.incbin "baserom/ovl_Bg_Mizu_Movebg", 0x1060, 0x000001B0
