.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_808F8280

.incbin "baserom/ovl_Boss_Ganon", 0x21A10, 0x00001140
