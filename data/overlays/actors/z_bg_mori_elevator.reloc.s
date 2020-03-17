.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_808A23E0

.incbin "baserom/ovl_Bg_Mori_Elevator", 0xBE0, 0x00000180
