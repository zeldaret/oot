.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_8090DDA0

.incbin "baserom/ovl_Boss_Ganon2", 0x10E60, 0x00000D80
