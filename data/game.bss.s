.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .bss

glabel gSpeedMeter
    .space 0x20

glabel D_801664F0
    .space 0x10

glabel D_80166500
    .space 0x10

glabel D_80166510
    .space 0x18

glabel D_80166528
    .space 0x88

glabel D_801665B0
    .space 0x10

glabel D_801665C0
    .space 0x10
