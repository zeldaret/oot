.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_809C2620

.incbin "baserom/ovl_En_Blkobj", 0x5C0, 0x000000B0
