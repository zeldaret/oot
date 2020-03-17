.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_8087D980

.incbin "baserom/ovl_Bg_Haka_Huta", 0x9C0, 0x000000C0
