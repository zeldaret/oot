.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_80B9FEF0

.incbin "baserom/ovl_Obj_Syokudai", 0xC40, 0x000000A0
