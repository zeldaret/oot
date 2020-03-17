.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_8012BBA0
    .incbin "baserom.z64", 0xBA2D40, 0x8

glabel D_8012BBA8
    .incbin "baserom.z64", 0xBA2D48, 0x400

glabel D_8012BFA8
    .incbin "baserom.z64", 0xBA3148, 0x400

glabel D_8012C3A8
    .incbin "baserom.z64", 0xBA3548, 0x400

glabel D_8012C7A8
    .incbin "baserom.z64", 0xBA3948, 0x620

glabel D_8012CDC8
    .incbin "baserom.z64", 0xBA3F68, 0xD8
