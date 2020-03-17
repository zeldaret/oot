.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_808B2ED0

.incbin "baserom/ovl_Bg_Spot11_Oasis", 0x6E0, 0x000000C0
