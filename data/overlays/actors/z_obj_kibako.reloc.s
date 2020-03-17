.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_80B958F0

.incbin "baserom/ovl_Obj_Kibako", 0xC50, 0x000000E0
