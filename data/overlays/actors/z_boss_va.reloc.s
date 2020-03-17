.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_8095C960

.incbin "baserom/ovl_Boss_Va", 0xD6A0, 0x000015F0
