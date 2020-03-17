.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_8012F090
    .incbin "baserom.z64", 0xBA6230, 0x8

glabel D_8012F098
    .incbin "baserom.z64", 0xBA6238, 0x18

glabel D_8012F0B0
    .incbin "baserom.z64", 0xBA6250, 0x4

glabel D_8012F0B4
    .incbin "baserom.z64", 0xBA6254, 0x200

glabel D_8012F2B4
    .incbin "baserom.z64", 0xBA6454, 0x200

glabel D_8012F4B4
    .incbin "baserom.z64", 0xBA6654, 0x200

glabel D_8012F6B4
    .incbin "baserom.z64", 0xBA6854, 0x200

glabel D_8012F8B4
    .incbin "baserom.z64", 0xBA6A54, 0x200

glabel D_8012FAB4
    .incbin "baserom.z64", 0xBA6C54, 0x10

glabel D_8012FAC4
    .incbin "baserom.z64", 0xBA6C64, 0x10

glabel D_8012FAD4
    .incbin "baserom.z64", 0xBA6C74, 0x10

glabel D_8012FAE4
    .incbin "baserom.z64", 0xBA6C84, 0x20

glabel D_8012FB04
    .incbin "baserom.z64", 0xBA6CA4, 0x20

glabel D_8012FB24
    .incbin "baserom.z64", 0xBA6CC4, 0x7E

glabel D_8012FBA2
    .incbin "baserom.z64", 0xBA6D42, 0x8

glabel D_8012FBAA
    .incbin "baserom.z64", 0xBA6D4A, 0x7E

glabel D_8012FC28
    .incbin "baserom.z64", 0xBA6DC8, 0x1FC

glabel D_8012FE24
    .incbin "baserom.z64", 0xBA6FC4, 0x4

glabel D_8012FE28
    .incbin "baserom.z64", 0xBA6FC8, 0x1D7

glabel D_8012FFFF
    .incbin "baserom.z64", 0xBA719F, 0x2

glabel D_80130001
    .incbin "baserom.z64", 0xBA71A1, 0x1

glabel D_80130002
    .incbin "baserom.z64", 0xBA71A2, 0x2

glabel D_80130004
    .incbin "baserom.z64", 0xBA71A4, 0x2

glabel D_80130006
    .incbin "baserom.z64", 0xBA71A6, 0x1E

glabel D_80130024
    .incbin "baserom.z64", 0xBA71C4, 0x4

glabel D_80130028
    .incbin "baserom.z64", 0xBA71C8, 0x1FC

glabel D_80130224
    .incbin "baserom.z64", 0xBA73C4, 0x4

glabel D_80130228
    .incbin "baserom.z64", 0xBA73C8, 0x100

glabel D_80130328
    .incbin "baserom.z64", 0xBA74C8, 0x148

glabel D_80130470
    .incbin "baserom.z64", 0xBA7610, 0x30

glabel D_801304A0
    .incbin "baserom.z64", 0xBA7640, 0x4

glabel D_801304A4
    .incbin "baserom.z64", 0xBA7644, 0x4

glabel D_801304A8
    .incbin "baserom.z64", 0xBA7648, 0x4

glabel D_801304AC
    .incbin "baserom.z64", 0xBA764C, 0x14

glabel D_801304C0
    .incbin "baserom.z64", 0xBA7660, 0x10
