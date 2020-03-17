.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_80865C20

.incbin "baserom/ovl_Arms_Hook", 0xD20, 0x000000F0
