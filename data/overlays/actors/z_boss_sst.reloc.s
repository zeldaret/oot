.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_80937A80

.incbin "baserom/ovl_Boss_Sst", 0xB4B0, 0x00001210
