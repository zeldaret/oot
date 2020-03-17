.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_809C4C90

.incbin "baserom/ovl_En_Bom_Bowl_Man", 0x1660, 0x000001B0
