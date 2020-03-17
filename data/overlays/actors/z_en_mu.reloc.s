.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_80AB0CC0

.incbin "baserom/ovl_En_Mu", 0x8A0, 0x000000D0
