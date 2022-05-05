.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel rspbootTextStart
    .incbin "baserom.z64", 0x9F20, 0xD0
glabel rspbootTextEnd
