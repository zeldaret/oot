.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_80A692E0

.incbin "baserom/ovl_En_Horse_Ganon", 0xC80, 0x000000F0
