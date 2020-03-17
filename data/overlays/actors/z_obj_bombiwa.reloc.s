.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_80B91B00

.incbin "baserom/ovl_Obj_Bombiwa", 0x510, 0x00000060
