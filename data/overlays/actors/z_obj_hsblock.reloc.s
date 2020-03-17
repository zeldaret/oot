.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_80B941A0

.incbin "baserom/ovl_Obj_Hsblock", 0x640, 0x000000C0
