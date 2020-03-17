.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_80B65460

.incbin "baserom/ovl_En_fHG", 0x2AA0, 0x000002C0
