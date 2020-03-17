.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .bss

# Starts at # 0x8015E660 and has a confirmed size of 0x1428
# Any address in that range should be an offset to gSaveContext
glabel gSaveContext
    .space 0x1428

glabel D_8015FA88
    .space 0x4

glabel D_8015FA8C
    .space 0x4
