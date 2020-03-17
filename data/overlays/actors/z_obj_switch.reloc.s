.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_80B9EFA0

.incbin "baserom/ovl_Obj_Switch", 0x1D90, 0x00000310
