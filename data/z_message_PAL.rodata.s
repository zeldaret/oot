.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_8014B2F0
    .incbin "baserom.z64", 0xBC2490, 0x4

glabel D_8014B2F4
    .incbin "baserom.z64", 0xBC2494, 0x4

glabel D_8014B2F8
    .incbin "baserom.z64", 0xBC2498, 0x4

glabel D_8014B2FC
    .incbin "baserom.z64", 0xBC249C, 0x4

glabel D_8014B300
    .incbin "baserom.z64", 0xBC24A0, 0x4

glabel D_8014B304
    .incbin "baserom.z64", 0xBC24A4, 0x4

glabel D_8014B308
    .incbin "baserom.z64", 0xBC24A8, 0x8

glabel D_8014B310
    .incbin "baserom.z64", 0xBC24B0, 0x4

glabel D_8014B314
    .incbin "baserom.z64", 0xBC24B4, 0x4

glabel D_8014B318
    .incbin "baserom.z64", 0xBC24B8, 0x4

glabel D_8014B31C
    .incbin "baserom.z64", 0xBC24BC, 0x4

glabel D_8014B320
    .incbin "baserom.z64", 0xBC24C0, 0x4228

glabel D_8014F548
    .incbin "baserom.z64", 0xBC66E8, 0xAB7

glabel D_8014FFFF
    .incbin "baserom.z64", 0xBC719F, 0x1659

glabel D_80151658
    .incbin "baserom.z64", 0xBC87F8, 0x1D7C

glabel D_801533D4
    .incbin "baserom.z64", 0xBCA574, 0x394

glabel D_80153768
    .incbin "baserom.z64", 0xBCA908, 0x188

glabel D_801538F0
    .incbin "baserom.z64", 0xBCAA90, 0x4

glabel D_801538F4
    .incbin "baserom.z64", 0xBCAA94, 0x4

glabel D_801538F8
    .incbin "baserom.z64", 0xBCAA98, 0x4

glabel D_801538FC
    .incbin "baserom.z64", 0xBCAA9C, 0x4

glabel D_80153900
    .incbin "baserom.z64", 0xBCAAA0, 0x30

glabel D_80153930
    .incbin "baserom.z64", 0xBCAAD0, 0x18

glabel D_80153948
    .incbin "baserom.z64", 0xBCAAE8, 0x3

glabel D_8015394B
    .incbin "baserom.z64", 0xBCAAEB, 0x1

glabel D_8015394C
    .incbin "baserom.z64", 0xBCAAEC, 0xC

glabel D_80153958
    .incbin "baserom.z64", 0xBCAAF8, 0x2

glabel D_8015395A
    .incbin "baserom.z64", 0xBCAAFA, 0x2

glabel D_8015395C
    .incbin "baserom.z64", 0xBCAAFC, 0x2

glabel D_8015395E
    .incbin "baserom.z64", 0xBCAAFE, 0x2

glabel D_80153960
    .incbin "baserom.z64", 0xBCAB00, 0x2

glabel D_80153962
    .incbin "baserom.z64", 0xBCAB02, 0x2

glabel D_80153964
    .incbin "baserom.z64", 0xBCAB04, 0x2

glabel D_80153966
    .incbin "baserom.z64", 0xBCAB06, 0x2

glabel D_80153968
    .incbin "baserom.z64", 0xBCAB08, 0x4

glabel D_8015396C
    .incbin "baserom.z64", 0xBCAB0C, 0x14

glabel D_80153980
    .incbin "baserom.z64", 0xBCAB20, 0x4

glabel D_80153984
    .incbin "baserom.z64", 0xBCAB24, 0x4

glabel D_80153988
    .incbin "baserom.z64", 0xBCAB28, 0x20

glabel D_801539A8
    .incbin "baserom.z64", 0xBCAB48, 0x20

glabel D_801539C8
    .incbin "baserom.z64", 0xBCAB68, 0xC

glabel D_801539D4
    .incbin "baserom.z64", 0xBCAB74, 0xC

glabel D_801539E0
    .incbin "baserom.z64", 0xBCAB80, 0x4

glabel D_801539E4
    .incbin "baserom.z64", 0xBCAB84, 0x4

glabel D_801539E8
    .incbin "baserom.z64", 0xBCAB88, 0x4

glabel D_801539EC
    .incbin "baserom.z64", 0xBCAB8C, 0x4

glabel D_801539F0
    .incbin "baserom.z64", 0xBCAB90, 0x4

glabel D_801539F4
    .incbin "baserom.z64", 0xBCAB94, 0x4

glabel D_801539F8
    .incbin "baserom.z64", 0xBCAB98, 0x4

glabel D_801539FC
    .incbin "baserom.z64", 0xBCAB9C, 0x244

glabel D_80153C40
    .incbin "baserom.z64", 0xBCADE0, 0x8

glabel D_80153C48
    .incbin "baserom.z64", 0xBCADE8, 0x8

glabel D_80153C50
    .incbin "baserom.z64", 0xBCADF0, 0x2

glabel D_80153C52
    .incbin "baserom.z64", 0xBCADF2, 0x2

glabel D_80153C54
    .incbin "baserom.z64", 0xBCADF4, 0x2

glabel D_80153C56
    .incbin "baserom.z64", 0xBCADF6, 0x2

glabel D_80153C58
    .incbin "baserom.z64", 0xBCADF8, 0x10

glabel D_80153C68
    .incbin "baserom.z64", 0xBCAE08, 0x10

glabel D_80153C78
    .incbin "baserom.z64", 0xBCAE18, 0x1C

glabel D_80153C94
    .incbin "baserom.z64", 0xBCAE34, 0x14

glabel D_80153CA8
    .incbin "baserom.z64", 0xBCAE48, 0xC

glabel D_80153CB4
    .incbin "baserom.z64", 0xBCAE54, 0xC

glabel D_80153CC0
    .incbin "baserom.z64", 0xBCAE60, 0xC

glabel D_80153CCC
    .incbin "baserom.z64", 0xBCAE6C, 0xC

glabel D_80153CD8
    .incbin "baserom.z64", 0xBCAE78, 0x4

glabel D_80153CDC
    .incbin "baserom.z64", 0xBCAE7C, 0x4

glabel D_80153CE0
    .incbin "baserom.z64", 0xBCAE80, 0x18

glabel D_80153CF8
    .incbin "baserom.z64", 0xBCAE98, 0x4

glabel D_80153CFC
    .incbin "baserom.z64", 0xBCAE9C, 0x4

glabel D_80153D00
    .incbin "baserom.z64", 0xBCAEA0, 0xC

glabel D_80153D0C
    .incbin "baserom.z64", 0xBCAEAC, 0xC

glabel D_80153D18
    .incbin "baserom.z64", 0xBCAEB8, 0xC

glabel D_80153D24
    .incbin "baserom.z64", 0xBCAEC4, 0xC

glabel D_80153D30
    .incbin "baserom.z64", 0xBCAED0, 0x44

glabel D_80153D74
    .incbin "baserom.z64", 0xBCAF14, 0x4

glabel D_80153D78
    .incbin "baserom.z64", 0xBCAF18, 0x8

glabel D_80153D80
    .incbin "baserom.z64", 0xBCAF20, 0x10

glabel D_80153D90
    .incbin "baserom.z64", 0xBCAF30, 0x5C

glabel D_80153DEC
    .incbin "baserom.z64", 0xBCAF8C, 0x5C

glabel D_80153E48
    .incbin "baserom.z64", 0xBCAFE8, 0x2C

glabel D_80153E74
    .incbin "baserom.z64", 0xBCB014, 0x5C

glabel D_80153ED0
    .incbin "baserom.z64", 0xBCB070, 0x2C

glabel D_80153EFC
    .incbin "baserom.z64", 0xBCB09C, 0x2C

glabel D_80153F28
    .incbin "baserom.z64", 0xBCB0C8, 0x2C

glabel D_80153F54
    .incbin "baserom.z64", 0xBCB0F4, 0x20

glabel D_80153F74
    .incbin "baserom.z64", 0xBCB114, 0x2C

glabel D_80153FA0
    .incbin "baserom.z64", 0xBCB140, 0x20

glabel D_80153FC0
    .incbin "baserom.z64", 0xBCB160, 0x10

glabel D_80153FD0
    .incbin "baserom.z64", 0xBCB170, 0x14

glabel D_80153FE4
    .incbin "baserom.z64", 0xBCB184, 0x14

glabel D_80153FF8
    .incbin "baserom.z64", 0xBCB198, 0x14

glabel D_8015400C
    .incbin "baserom.z64", 0xBCB1AC, 0x10

glabel D_8015401C
    .incbin "baserom.z64", 0xBCB1BC, 0x14

glabel D_80154030
    .incbin "baserom.z64", 0xBCB1D0, 0x10

glabel D_80154040
    .incbin "baserom.z64", 0xBCB1E0, 0x14

glabel D_80154054
    .incbin "baserom.z64", 0xBCB1F4, 0x14

glabel D_80154068
    .incbin "baserom.z64", 0xBCB208, 0x10

glabel D_80154078
    .incbin "baserom.z64", 0xBCB218, 0x14

glabel D_8015408C
    .incbin "baserom.z64", 0xBCB22C, 0x1C

glabel D_801540A8
    .incbin "baserom.z64", 0xBCB248, 0xC

glabel D_801540B4
    .incbin "baserom.z64", 0xBCB254, 0x18

glabel D_801540CC
    .incbin "baserom.z64", 0xBCB26C, 0xC

glabel D_801540D8
    .incbin "baserom.z64", 0xBCB278, 0x4

glabel D_801540DC
    .incbin "baserom.z64", 0xBCB27C, 0x18

glabel D_801540F4
    .incbin "baserom.z64", 0xBCB294, 0x18

glabel D_8015410C
    .incbin "baserom.z64", 0xBCB2AC, 0x14

glabel D_80154120
    .incbin "baserom.z64", 0xBCB2C0, 0x8

glabel D_80154128
    .incbin "baserom.z64", 0xBCB2C8, 0x14

glabel D_8015413C
    .incbin "baserom.z64", 0xBCB2DC, 0x8

glabel D_80154144
    .incbin "baserom.z64", 0xBCB2E4, 0x10

glabel D_80154154
    .incbin "baserom.z64", 0xBCB2F4, 0x48

glabel D_8015419C
    .incbin "baserom.z64", 0xBCB33C, 0xC

glabel D_801541A8
    .incbin "baserom.z64", 0xBCB348, 0x10

glabel D_801541B8
    .incbin "baserom.z64", 0xBCB358, 0x14

glabel D_801541CC
    .incbin "baserom.z64", 0xBCB36C, 0x14

glabel D_801541E0
    .incbin "baserom.z64", 0xBCB380, 0x14

glabel D_801541F4
    .incbin "baserom.z64", 0xBCB394, 0x20

glabel D_80154214
    .incbin "baserom.z64", 0xBCB3B4, 0x1C

glabel D_80154230
    .incbin "baserom.z64", 0xBCB3D0, 0x8

glabel D_80154238
    .incbin "baserom.z64", 0xBCB3D8, 0x58

glabel D_80154290
    .incbin "baserom.z64", 0xBCB430, 0x4

glabel D_80154294
    .incbin "baserom.z64", 0xBCB434, 0x14

glabel D_801542A8
    .incbin "baserom.z64", 0xBCB448, 0x14

glabel D_801542BC
    .incbin "baserom.z64", 0xBCB45C, 0x14

glabel D_801542D0
    .incbin "baserom.z64", 0xBCB470, 0x14

glabel D_801542E4
    .incbin "baserom.z64", 0xBCB484, 0x14

glabel D_801542F8
    .incbin "baserom.z64", 0xBCB498, 0x14

glabel D_8015430C
    .incbin "baserom.z64", 0xBCB4AC, 0x8

glabel D_80154314
    .incbin "baserom.z64", 0xBCB4B4, 0x14

glabel D_80154328
    .incbin "baserom.z64", 0xBCB4C8, 0x4

glabel D_8015432C
    .incbin "baserom.z64", 0xBCB4CC, 0x8

glabel D_80154334
    .incbin "baserom.z64", 0xBCB4D4, 0x24

glabel D_80154358
    .incbin "baserom.z64", 0xBCB4F8, 0x4

glabel D_8015435C
    .incbin "baserom.z64", 0xBCB4FC, 0x8

glabel D_80154364
    .incbin "baserom.z64", 0xBCB504, 0x1C

glabel D_80154380
    .incbin "baserom.z64", 0xBCB520, 0x14

glabel D_80154394
    .incbin "baserom.z64", 0xBCB534, 0x4

glabel D_80154398
    .incbin "baserom.z64", 0xBCB538, 0x34

glabel D_801543CC
    .incbin "baserom.z64", 0xBCB56C, 0x28

glabel D_801543F4
    .incbin "baserom.z64", 0xBCB594, 0xC

glabel D_80154400
    .incbin "baserom.z64", 0xBCB5A0, 0xC

glabel D_8015440C
    .incbin "baserom.z64", 0xBCB5AC, 0x1C

glabel D_80154428
    .incbin "baserom.z64", 0xBCB5C8, 0xC

glabel D_80154434
    .incbin "baserom.z64", 0xBCB5D4, 0x30

glabel D_80154464
    .incbin "baserom.z64", 0xBCB604, 0xC

glabel D_80154470
    .incbin "baserom.z64", 0xBCB610, 0x3C

glabel D_801544AC
    .incbin "baserom.z64", 0xBCB64C, 0x14

glabel D_801544C0
    .incbin "baserom.z64", 0xBCB660, 0x18

glabel D_801544D8
    .incbin "baserom.z64", 0xBCB678, 0x20

glabel D_801544F8
    .incbin "baserom.z64", 0xBCB698, 0x20

glabel D_80154518
    .incbin "baserom.z64", 0xBCB6B8, 0x20

glabel D_80154538
    .incbin "baserom.z64", 0xBCB6D8, 0x14

glabel D_8015454C
    .incbin "baserom.z64", 0xBCB6EC, 0x10

glabel D_8015455C
    .incbin "baserom.z64", 0xBCB6FC, 0xC

glabel D_80154568
    .incbin "baserom.z64", 0xBCB708, 0x8

glabel D_80154570
    .incbin "baserom.z64", 0xBCB710, 0x18

glabel D_80154588
    .incbin "baserom.z64", 0xBCB728, 0x18

glabel D_801545A0
    .incbin "baserom.z64", 0xBCB740, 0x18

glabel D_801545B8
    .incbin "baserom.z64", 0xBCB758, 0x4

glabel D_801545BC
    .incbin "baserom.z64", 0xBCB75C, 0x18

glabel D_801545D4
    .incbin "baserom.z64", 0xBCB774, 0x10

glabel D_801545E4
    .incbin "baserom.z64", 0xBCB784, 0x8

glabel D_801545EC
    .incbin "baserom.z64", 0xBCB78C, 0x2C

glabel D_80154618
    .incbin "baserom.z64", 0xBCB7B8, 0x8

glabel D_80154620
    .incbin "baserom.z64", 0xBCB7C0, 0x24

glabel D_80154644
    .incbin "baserom.z64", 0xBCB7E4, 0x8

glabel D_8015464C
    .incbin "baserom.z64", 0xBCB7EC, 0x20

glabel D_8015466C
    .incbin "baserom.z64", 0xBCB80C, 0x4

glabel D_80154670
    .incbin "baserom.z64", 0xBCB810, 0x18

glabel D_80154688
    .incbin "baserom.z64", 0xBCB828, 0x14

glabel D_8015469C
    .incbin "baserom.z64", 0xBCB83C, 0x2C

glabel D_801546C8
    .incbin "baserom.z64", 0xBCB868, 0x8

glabel D_801546D0
    .incbin "baserom.z64", 0xBCB870, 0x20

glabel D_801546F0
    .incbin "baserom.z64", 0xBCB890, 0x4

glabel D_801546F4
    .incbin "baserom.z64", 0xBCB894, 0x14

glabel D_80154708
    .incbin "baserom.z64", 0xBCB8A8, 0x18

glabel D_80154720
    .incbin "baserom.z64", 0xBCB8C0, 0x18

glabel D_80154738
    .incbin "baserom.z64", 0xBCB8D8, 0x38

glabel D_80154770
    .incbin "baserom.z64", 0xBCB910, 0x10

glabel D_80154780
    .incbin "baserom.z64", 0xBCB920, 0x24

glabel D_801547A4
    .incbin "baserom.z64", 0xBCB944, 0x8

glabel D_801547AC
    .incbin "baserom.z64", 0xBCB94C, 0x48

glabel D_801547F4
    .incbin "baserom.z64", 0xBCB994, 0x8

glabel D_801547FC
    .incbin "baserom.z64", 0xBCB99C, 0x4

glabel D_80154800
    .incbin "baserom.z64", 0xBCB9A0, 0x48

glabel D_80154848
    .incbin "baserom.z64", 0xBCB9E8, 0x10

glabel D_80154858
    .incbin "baserom.z64", 0xBCB9F8, 0x10

glabel D_80154868
    .incbin "baserom.z64", 0xBCBA08, 0x10

glabel D_80154878
    .incbin "baserom.z64", 0xBCBA18, 0x8

glabel D_80154880
    .incbin "baserom.z64", 0xBCBA20, 0x48

glabel D_801548C8
    .incbin "baserom.z64", 0xBCBA68, 0x8

glabel D_801548D0
    .incbin "baserom.z64", 0xBCBA70, 0x4

glabel D_801548D4
    .incbin "baserom.z64", 0xBCBA74, 0x48

glabel D_8015491C
    .incbin "baserom.z64", 0xBCBABC, 0x20

glabel D_8015493C
    .incbin "baserom.z64", 0xBCBADC, 0x10

glabel D_8015494C
    .incbin "baserom.z64", 0xBCBAEC, 0x1C

glabel D_80154968
    .incbin "baserom.z64", 0xBCBB08, 0x1C

glabel D_80154984
    .incbin "baserom.z64", 0xBCBB24, 0x14

glabel D_80154998
    .incbin "baserom.z64", 0xBCBB38, 0x14

glabel D_801549AC
    .incbin "baserom.z64", 0xBCBB4C, 0x4

glabel D_801549B0
    .incbin "baserom.z64", 0xBCBB50, 0x8

glabel D_801549B8
    .incbin "baserom.z64", 0xBCBB58, 0x4

glabel D_801549BC
    .incbin "baserom.z64", 0xBCBB5C, 0x4

glabel D_801549C0
    .incbin "baserom.z64", 0xBCBB60, 0x4

glabel D_801549C4
    .incbin "baserom.z64", 0xBCBB64, 0x14

glabel D_801549D8
    .incbin "baserom.z64", 0xBCBB78, 0x14

glabel D_801549EC
    .incbin "baserom.z64", 0xBCBB8C, 0xC

glabel D_801549F8
    .incbin "baserom.z64", 0xBCBB98, 0x28

glabel D_80154A20
    .incbin "baserom.z64", 0xBCBBC0, 0x28

glabel D_80154A48
    .incbin "baserom.z64", 0xBCBBE8, 0x1C

glabel D_80154A64
    .incbin "baserom.z64", 0xBCBC04, 0x14

glabel D_80154A78
    .incbin "baserom.z64", 0xBCBC18, 0x28

glabel D_80154AA0
    .incbin "baserom.z64", 0xBCBC40, 0x14

glabel D_80154AB4
    .incbin "baserom.z64", 0xBCBC54, 0xC

glabel D_80154AC0
    .incbin "baserom.z64", 0xBCBC60, 0x8

glabel D_80154AC8
    .incbin "baserom.z64", 0xBCBC68, 0x20

glabel D_80154AE8
    .incbin "baserom.z64", 0xBCBC88, 0x14

glabel D_80154AFC
    .incbin "baserom.z64", 0xBCBC9C, 0x4

glabel D_80154B00
    .incbin "baserom.z64", 0xBCBCA0, 0x28

glabel jtbl_80154B28
    .word L80107934
    .word L801076F4
    .word L8010773C
    .word L801077B4
    .word L80107804
    .word L8010787C
    .word L801078CC
    .word L80107918

glabel jtbl_80154B48
    .word L801087EC
    .word L801095F0
    .word L801097E4
    .word L801088E8
    .word L8010887C
    .word L80108984
    .word L801089B8
    .word L80108A2C
    .word L80108AD4
    .word L80109724
    .word L8010977C
    .word L80108B34
    .word L80108AE0
    .word L801096B4
    .word L801097E4
    .word L80109680
    .word L80108B70
    .word L80108C0C
    .word L80108CB8
    .word L801094E4
    .word L80108D00
    .word L801097E4
    .word L801097E4
    .word L801097E4
    .word L801097E4
    .word L80109510
    .word L80109528
    .word L8010958C
    .word L801097E4
    .word L801097E4
    .word L801097E4
    .word L801088CC

glabel D_80154BC8
    .incbin "baserom.z64", 0xBCBD68, 0x4

glabel jtbl_80154BCC
    .word L8010A6FC
    .word L8010A6FC
    .word L8010A6FC
    .word L8010A850
    .word L8010A850
    .word L8010B06C
    .word L8010A850

glabel jtbl_80154BE8
    .word L8010C4F4
    .word L8010C4F4
    .word L8010C4F4
    .word L8010C4F4
    .word L8010C4FC
    .word L8010C564
    .word L8010C578
    .word L8010C564
    .word L8010C5AC
    .word L8010C5AC
    .word L8010C5AC
    .word L8010C750
    .word L8010CBFC
    .word L8010D500
    .word L8010D50C
    .word L8010D594
    .word L8010D65C
    .word L8010D768
    .word L8010DC10
    .word L8010D924
    .word L8010D968
    .word L8010D9A0
    .word L8010D9D8
    .word L8010D824
    .word L8010DC10
    .word L8010DD08
    .word L8010DD1C
    .word L8010CBFC
    .word L8010D500
    .word L8010D594
    .word L8010DEAC
    .word L8010EC60
    .word L8010DED8
    .word L8010DF4C
    .word L8010E1D8
    .word L8010E334
    .word L8010E364
    .word L8010E544
    .word L8010CBFC
    .word L8010E1D8
    .word L8010E580
    .word L8010E5F0
    .word L8010E730
    .word L8010E5F0
    .word L8010E730
    .word L8010E79C
    .word L8010E904
    .word L8010EA20
    .word L8010EA70
    .word L8010EAE0
    .word L8010EB44
    .word L8010C578
    .word L8010EB4C
    .word L8010EC58
    .word L8010EC58

glabel jtbl_80154CC4
    .word L8010F8F8
    .word L8010FCE0
    .word L8010FCF0
    .word L8010FD24
    .word L8010FD80
    .word L8010FDB0
    .word L8010FE10
    .word L8010FE58
    .balign 16

glabel jtbl_80154CF0
    .word L80110520
    .word L80110960
    .word L80110748
    .word L80110960
    .word L80110960
    .word L80110960
    .word L80110960
    .word L80110960
    .word L80110960
    .word L80110960
    .word L80110960
    .word L80110960
    .word L80110960
    .word L80110960
    .word L80110960
    .word L80110960
    .word L80110960
    .word L80110960
    .word L80110960
    .word L8011079C
    .word L801107D8
    .word L801108A4
    .word L801108E8
    .word L8011092C
