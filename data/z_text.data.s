.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

# temporary file name, rename to something more appropriate when decompiled

glabel gMojiFontTLUTs
    .incbin "baserom.z64", 0xBA18E0, 0x80

glabel gMojiFontTex
    .incbin "baserom.z64", 0xBA1960, 0x400
