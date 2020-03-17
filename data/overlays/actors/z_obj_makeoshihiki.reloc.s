.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_80B98A10

.incbin "baserom/ovl_Obj_Makeoshihiki", 0x500, 0x00000090
