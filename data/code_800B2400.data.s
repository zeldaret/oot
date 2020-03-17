.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_8012B030
    .incbin "baserom.z64", 0xBA21D0, 0x30

glabel D_8012B060
    .incbin "baserom.z64", 0xBA2200, 0xA30
