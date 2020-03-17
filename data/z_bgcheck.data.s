.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80119D90
    .incbin "baserom.z64", 0xB90F30, 0x80

glabel D_80119E10
    .incbin "baserom.z64", 0xB90FB0, 0x1C

glabel D_80119E2C
    .incbin "baserom.z64", 0xB90FCC, 0x26

glabel D_80119E52
    .incbin "baserom.z64", 0xB90FF2, 0x2

glabel D_80119E54
    .incbin "baserom.z64", 0xB90FF4, 0x40

glabel D_80119E94
    .incbin "baserom.z64", 0xB91034, 0x18

glabel D_80119EAC
    .incbin "baserom.z64", 0xB9104C, 0x10

glabel D_80119EBC
    .incbin "baserom.z64", 0xB9105C, 0x4

glabel D_80119EC0
    .incbin "baserom.z64", 0xB91060, 0x4

glabel D_80119EC4
    .incbin "baserom.z64", 0xB91064, 0x4

glabel D_80119EC8
    .incbin "baserom.z64", 0xB91068, 0x4

glabel D_80119ECC
    .incbin "baserom.z64", 0xB9106C, 0x4

glabel D_80119ED0
    .incbin "baserom.z64", 0xB91070, 0x10
