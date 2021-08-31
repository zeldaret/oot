.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel D_80131F70
    .incbin "baserom.z64", 0xBA9110, 0x7CC

glabel D_8013273C
    .incbin "baserom.z64", 0xBA98DC, 0x380

glabel D_80132ABC
    .incbin "baserom.z64", 0xBA9C5C, 0x140

glabel D_80132BFC
    .incbin "baserom.z64", 0xBA9D9C, 0x3E0

glabel D_80132FDC
    .incbin "baserom.z64", 0xBAA17C, 0x120

glabel D_801330FC
    .incbin "baserom.z64", 0xBAA29C, 0x20

glabel D_8013311C
    .incbin "baserom.z64", 0xBAA2BC, 0x200

glabel D_8013331C
    .word D_8013273C
    .word D_80132ABC
    .word D_80132BFC
    .word D_80131F70
    .word D_80132FDC
    .word D_801330FC
    .word D_8013311C
