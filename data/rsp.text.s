.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel aspMainTextStart
    .incbin "baserom.z64", 0xB89260, 0xFB0
glabel aspMainTextEnd

glabel gspS2DEX2d_fifoTextStart
    .incbin "baserom.z64", 0xB8A210, 0x18C0
glabel gspS2DEX2d_fifoTextEnd

glabel njpgdspMainTextStart
    .incbin "baserom.z64", 0xB8BAD0, 0xAF0
glabel njpgdspMainTextEnd
