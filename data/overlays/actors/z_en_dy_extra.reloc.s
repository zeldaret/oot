.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_809FFCF0
    .incbin "baserom/ovl_En_Dy_Extra", 0x600, 0x000000A0
