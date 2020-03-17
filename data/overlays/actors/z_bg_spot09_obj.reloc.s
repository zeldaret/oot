.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_808B20D0

.incbin "baserom/ovl_Bg_Spot09_Obj", 0x5F0, 0x000000B0
