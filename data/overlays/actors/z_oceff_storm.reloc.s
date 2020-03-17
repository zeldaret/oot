.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_80BA8CA0

.incbin "baserom/ovl_Oceff_Storm", 0x1BC0, 0x000000F0
