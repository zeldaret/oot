.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_8014B280
    .incbin "baserom.z64", 0xBC2420, 0x28 

glabel D_8014B2A8
    .incbin "baserom.z64", 0xBC2448, 0x8 # .double 0.318309886183791

glabel D_8014B2B0
    .incbin "baserom.z64", 0xBC2450, 0x8 # Pi

glabel D_8014B2B8
    .incbin "baserom.z64", 0xBC2458, 0x8 # 3.17865095470564E-8

glabel D_8014B2C0
    .incbin "baserom.z64", 0xBC2460, 0x10 # Nothing?

glabel D_8014B2D0
    .incbin "baserom.z64", 0xBC2470, 0x10 # Called as a float, but contains a invalid number?
