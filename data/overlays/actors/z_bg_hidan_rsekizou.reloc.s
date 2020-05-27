.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_8088CE20
    .incbin "baserom/ovl_Bg_Hidan_Rsekizou", 0xC20, 0x000000A0
