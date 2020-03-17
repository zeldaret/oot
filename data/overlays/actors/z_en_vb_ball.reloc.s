.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_80B2A110

.incbin "baserom/ovl_En_Vb_Ball", 0x1170, 0x000000F0
