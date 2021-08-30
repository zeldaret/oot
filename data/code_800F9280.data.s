.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel sSeqCmdWrPos
    .incbin "baserom.z64", 0xBAA5A0, 0x4

glabel sSeqCmdRdPos
    .incbin "baserom.z64", 0xBAA5A4, 0x4

glabel D_80133408
    .incbin "baserom.z64", 0xBAA5A8, 0x4

glabel D_8013340C
    .incbin "baserom.z64", 0xBAA5AC, 0x4

glabel D_80133410
    .incbin "baserom.z64", 0xBAA5B0, 0x4

glabel gAudioSpecId
    .incbin "baserom.z64", 0xBAA5B4, 0x4

glabel D_80133418
    .incbin "baserom.z64", 0xBAA5B8, 0x8

glabel D_80133420
    .incbin "baserom.z64", 0xBAA5C0, 0x48

glabel D_80133468
    .incbin "baserom.z64", 0xBAA608, 0x48

glabel D_801334B0
    .incbin "baserom.z64", 0xBAA650, 0x90

glabel D_80133540
    .incbin "baserom.z64", 0xBAA6E0, 0x48

glabel D_80133588
    .incbin "baserom.z64", 0xBAA728, 0x48

glabel D_801335D0
    .incbin "baserom.z64", 0xBAA770, 0x48

glabel D_80133618
    .incbin "baserom.z64", 0xBAA7B8, 0x48

glabel D_80133660
    .incbin "baserom.z64", 0xBAA800, 0x48

glabel D_801336A8
    .incbin "baserom.z64", 0xBAA848, 0x48

glabel D_801336F0
    .incbin "baserom.z64", 0xBAA890, 0x48

glabel D_80133738
    .incbin "baserom.z64", 0xBAA8D8, 0x90

glabel gAudioSpecs
    .incbin "baserom.z64", 0xBAA968, 0xC
    .word D_80133420
    .incbin "baserom.z64", 0xBAA978, 0x34
    .word D_80133468
    .incbin "baserom.z64", 0xBAA9B0, 0x34
    .word D_801334B0
    .incbin "baserom.z64", 0xBAA9E8, 0x34
    .word D_80133540
    .incbin "baserom.z64", 0xBAAA20, 0x34
    .word D_80133588
    .incbin "baserom.z64", 0xBAAA58, 0x34
    .word D_801335D0
    .incbin "baserom.z64", 0xBAAA90, 0x34
    .word D_80133618
    .incbin "baserom.z64", 0xBAAAC8, 0x34
    .word D_80133660
    .incbin "baserom.z64", 0xBAAB00, 0x34
    .word D_801336A8
    .incbin "baserom.z64", 0xBAAB38, 0x34
    .word D_80133660
    .incbin "baserom.z64", 0xBAAB70, 0x34
    .word D_801336F0
    .incbin "baserom.z64", 0xBAABA8, 0x34
    .word D_80133738
    .incbin "baserom.z64", 0xBAABE0, 0x34
    .word D_80133738
    .incbin "baserom.z64", 0xBAAC18, 0x34
    .word D_80133420
    .incbin "baserom.z64", 0xBAAC50, 0x34
    .word D_80133660
    .incbin "baserom.z64", 0xBAAC88, 0x34
    .word D_80133420
    .incbin "baserom.z64", 0xBAACC0, 0x34
    .word D_80133420
    .incbin "baserom.z64", 0xBAACF8, 0x34
    .word D_801334B0
    .incbin "baserom.z64", 0xBAAD30, 0x30
    