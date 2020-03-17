.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_80BA29A0

.incbin "baserom/ovl_Obj_Warp2block", 0xBB0, 0x00000100
