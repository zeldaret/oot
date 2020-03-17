.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_80BADBD0

.incbin "baserom/ovl_Oceff_Wipe4", 0xFC0, 0x000000F0
