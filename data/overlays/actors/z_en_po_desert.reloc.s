.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_80AD3A40

.incbin "baserom/ovl_En_Po_Desert", 0xD90, 0x000000C0
