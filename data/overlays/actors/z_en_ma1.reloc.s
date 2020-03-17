.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_80AA17C0

.incbin "baserom/ovl_En_Ma1", 0x1130, 0x000001E0
