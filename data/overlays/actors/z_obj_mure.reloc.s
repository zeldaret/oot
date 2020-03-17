.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_80B99D60

.incbin "baserom/ovl_Obj_Mure", 0x12C0, 0x000001E0
