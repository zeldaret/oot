.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_80A58A70

.incbin "baserom/ovl_En_Hintnuts", 0x1870, 0x000001A0
