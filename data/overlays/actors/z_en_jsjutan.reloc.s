.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_80A8E4B0

.incbin "baserom/ovl_En_Jsjutan", 0x4D10, 0x00000160
