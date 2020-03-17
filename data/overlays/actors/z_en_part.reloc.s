.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_80ACF2F0

.incbin "baserom/ovl_En_Part", 0x1520, 0x000001B0
