.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_8099C830

.incbin "baserom/ovl_Door_Warp1", 0x40B0, 0x00000470
