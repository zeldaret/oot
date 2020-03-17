.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_80A0E1F0

.incbin "baserom/ovl_En_Fd", 0x2B30, 0x000002C0
