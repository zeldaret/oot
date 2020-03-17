.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_8091B610

.incbin "baserom/ovl_Boss_Goma", 0x5C00, 0x000004F0
