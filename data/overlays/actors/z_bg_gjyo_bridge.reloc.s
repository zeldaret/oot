.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_80878BB0

.incbin "baserom/ovl_Bg_Gjyo_Bridge", 0x4F0, 0x00000080
