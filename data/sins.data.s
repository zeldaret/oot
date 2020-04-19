.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_801344D0
    .incbin "baserom.z64", 0xBAB670, 0x7FE

glabel D_80134CCE
    .incbin "baserom.z64", 0xBABE6E, 0x2