.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel D_80120130
    .incbin "baserom.z64", 0xB972D0, 0x4

glabel D_80120134
    .incbin "baserom.z64", 0xB972D4, 0x4

glabel D_80120138
    .incbin "baserom.z64", 0xB972D8, 0x4

glabel D_8012013C
    .incbin "baserom.z64", 0xB972DC, 0xE0

glabel D_8012021C
    .incbin "baserom.z64", 0xB973BC, 0xE0

glabel D_801202FC
    .incbin "baserom.z64", 0xB9749C, 0x4

glabel D_80120300
    .incbin "baserom.z64", 0xB974A0, 0x4

glabel D_80120304
    .incbin "baserom.z64", 0xB974A4, 0x4

glabel D_80120308
    .incbin "baserom.z64", 0xB974A8, 0x90

glabel D_80120398
    .incbin "baserom.z64", 0xB97538, 0x94

glabel D_8012042C
    .incbin "baserom.z64", 0xB975CC, 0x4

glabel D_80120430
    .incbin "baserom.z64", 0xB975D0, 0x4

glabel D_80120434
    .incbin "baserom.z64", 0xB975D4, 0xA0

glabel D_801204D4
    .incbin "baserom.z64", 0xB97674, 0xE0

glabel D_801205B4
    .incbin "baserom.z64", 0xB97754, 0xE0

glabel D_80120694
    .incbin "baserom.z64", 0xB97834, 0x4

glabel D_80120698
    .incbin "baserom.z64", 0xB97838, 0x4

glabel D_8012069C
    .incbin "baserom.z64", 0xB9783C, 0x4

glabel D_801206A0
    .incbin "baserom.z64", 0xB97840, 0xC0

glabel D_80120760
    .incbin "baserom.z64", 0xB97900, 0xC0

glabel D_80120820
    .incbin "baserom.z64", 0xB979C0, 0xC4

glabel D_801208E4
    .incbin "baserom.z64", 0xB97A84, 0x4

glabel D_801208E8
    .incbin "baserom.z64", 0xB97A88, 0x4

glabel D_801208EC
    .incbin "baserom.z64", 0xB97A8C, 0x10

glabel D_801208FC
    .incbin "baserom.z64", 0xB97A9C, 0xC

glabel D_80120908
    .incbin "baserom.z64", 0xB97AA8, 0x1C

glabel D_80120924
    .incbin "baserom.z64", 0xB97AC4, 0xC

glabel D_80120930
    .incbin "baserom.z64", 0xB97AD0, 0x34

glabel D_80120964
    .incbin "baserom.z64", 0xB97B04, 0x10

glabel D_80120974
    .incbin "baserom.z64", 0xB97B14, 0xC

glabel D_80120980
    .incbin "baserom.z64", 0xB97B20, 0x34

glabel D_801209B4
    .incbin "baserom.z64", 0xB97B54, 0x10

glabel D_801209C4
    .incbin "baserom.z64", 0xB97B64, 0xC

glabel D_801209D0
    .incbin "baserom.z64", 0xB97B70, 0x1C

glabel D_801209EC
    .incbin "baserom.z64", 0xB97B8C, 0xC

glabel D_801209F8
    .incbin "baserom.z64", 0xB97B98, 0x5C

glabel D_80120A54
    .incbin "baserom.z64", 0xB97BF4, 0x78

glabel D_80120ACC
    .incbin "baserom.z64", 0xB97C6C, 0xC0

glabel D_80120B8C
    .incbin "baserom.z64", 0xB97D2C, 0x8

glabel D_80120B94
    .incbin "baserom.z64", 0xB97D34, 0x1B0

glabel D_80120D44
    .incbin "baserom.z64", 0xB97EE4, 0x8

glabel D_80120D4C
    .incbin "baserom.z64", 0xB97EEC, 0x118

glabel D_80120E64
    .incbin "baserom.z64", 0xB98004, 0x140

glabel D_80120FA4
    .incbin "baserom.z64", 0xB98144, 0xF0

glabel D_80121094
    .incbin "baserom.z64", 0xB98234, 0x78

glabel D_8012110C
    .incbin "baserom.z64", 0xB982AC, 0x78

glabel D_80121184
    .incbin "baserom.z64", 0xB98324, 0x1C

glabel D_801211A0
    .incbin "baserom.z64", 0xB98340, 0x34

glabel D_801211D4
    .incbin "baserom.z64", 0xB98374, 0x50

glabel D_80121224
    .incbin "baserom.z64", 0xB983C4, 0xF0

glabel D_80121314
    .incbin "baserom.z64", 0xB984B4, 0x28

glabel D_8012133C
    .incbin "baserom.z64", 0xB984DC, 0x1C

glabel D_80121358
    .incbin "baserom.z64", 0xB984F8, 0x5C

glabel D_801213B4
    .incbin "baserom.z64", 0xB98554, 0xC8

glabel D_8012147C
    .incbin "baserom.z64", 0xB9861C, 0xA0

glabel D_8012151C
    .incbin "baserom.z64", 0xB986BC, 0x50

glabel D_8012156C
    .incbin "baserom.z64", 0xB9870C, 0x50

glabel D_801215BC
    .incbin "baserom.z64", 0xB9875C, 0x28

glabel D_801215E4
    .incbin "baserom.z64", 0xB98784, 0x190

glabel D_80121774
    .incbin "baserom.z64", 0xB98914, 0xA0

glabel D_80121814
    .incbin "baserom.z64", 0xB989B4, 0xA0

glabel D_801218B4
    .incbin "baserom.z64", 0xB98A54, 0x50

glabel D_80121904
    .incbin "baserom.z64", 0xB98AA4, 0x50

glabel D_80121954
    .incbin "baserom.z64", 0xB98AF4, 0xF0

glabel D_80121A44
    .incbin "baserom.z64", 0xB98BE4, 0x1E0

glabel D_80121C24
    .incbin "baserom.z64", 0xB98DC4, 0x10

glabel D_80121C34
    .incbin "baserom.z64", 0xB98DD4, 0xC

glabel D_80121C40
    .incbin "baserom.z64", 0xB98DE0, 0xFC

glabel D_80121D3C
    .incbin "baserom.z64", 0xB98EDC, 0x78

glabel D_80121DB4
    .incbin "baserom.z64", 0xB98F54, 0x168

glabel D_80121F1C
    .incbin "baserom.z64", 0xB990BC, 0x8

glabel D_80121F24
    .incbin "baserom.z64", 0xB990C4, 0x8

glabel D_80121F2C
    .incbin "baserom.z64", 0xB990CC, 0xC

glabel D_80121F38
    .incbin "baserom.z64", 0xB990D8, 0x84

glabel D_80121FBC
    .incbin "baserom.z64", 0xB9915C, 0x10

glabel D_80121FCC
    .incbin "baserom.z64", 0xB9916C, 0xC

glabel D_80121FD8
    .incbin "baserom.z64", 0xB99178, 0x84

glabel D_8012205C
    .incbin "baserom.z64", 0xB991FC, 0x78

glabel D_801220D4
    .incbin "baserom.z64", 0xB99274, 0x10

glabel D_801220E4
    .incbin "baserom.z64", 0xB99284, 0xC

glabel D_801220F0
    .incbin "baserom.z64", 0xB99290, 0xAC

glabel D_8012219C
    .incbin "baserom.z64", 0xB9933C, 0x118

glabel D_801222B4
    .incbin "baserom.z64", 0xB99454, 0xC8

glabel D_8012237C
    .incbin "baserom.z64", 0xB9951C, 0x50

glabel D_801223CC
    .incbin "baserom.z64", 0xB9956C, 0xF0

glabel D_801224BC
    .incbin "baserom.z64", 0xB9965C, 0x118

glabel D_801225D4
    .incbin "baserom.z64", 0xB99774, 0xC8

glabel D_8012269C
    .incbin "baserom.z64", 0xB9983C, 0x78

glabel D_80122714
    .incbin "baserom.z64", 0xB998B4, 0xA0

glabel D_801227B4
    .incbin "baserom.z64", 0xB99954, 0xF0

glabel D_801228A4
    .incbin "baserom.z64", 0xB99A44, 0xC8

glabel D_8012296C
    .incbin "baserom.z64", 0xB99B0C, 0xA0

glabel D_80122A0C
    .incbin "baserom.z64", 0xB99BAC, 0x50

glabel D_80122A5C
    .incbin "baserom.z64", 0xB99BFC, 0x140

glabel D_80122B9C
    .incbin "baserom.z64", 0xB99D3C, 0x78

glabel D_80122C14
    .incbin "baserom.z64", 0xB99DB4, 0x28

glabel D_80122C3C
    .incbin "baserom.z64", 0xB99DDC, 0x28

glabel D_80122C64
    .incbin "baserom.z64", 0xB99E04, 0x28

glabel D_80122C8C
    .incbin "baserom.z64", 0xB99E2C, 0x28

glabel D_80122CB4
    .incbin "baserom.z64", 0xB99E54, 0x50

glabel D_80122D04
    .incbin "baserom.z64", 0xB99EA4, 0x50

glabel D_80122D54
    .incbin "baserom.z64", 0xB99EF4, 0x78

glabel D_80122DCC
    .incbin "baserom.z64", 0xB99F6C, 0x78

glabel D_80122E44
    .incbin "baserom.z64", 0xB99FE4, 0x230

glabel D_80123074
    .incbin "baserom.z64", 0xB9A214, 0xC8

glabel D_8012313C
    .incbin "baserom.z64", 0xB9A2DC, 0x78

glabel D_801231B4
    .incbin "baserom.z64", 0xB9A354, 0x88

glabel D_8012323C
    .incbin "baserom.z64", 0xB9A3DC, 0xC

glabel D_80123248
    .incbin "baserom.z64", 0xB9A3E8, 0xC

glabel D_80123254
    .incbin "baserom.z64", 0xB9A3F4, 0x10

glabel D_80123264
    .incbin "baserom.z64", 0xB9A404, 0xC

glabel D_80123270
    .incbin "baserom.z64", 0xB9A410, 0x1C

glabel D_8012328C
    .incbin "baserom.z64", 0xB9A42C, 0xC

glabel D_80123298
    .incbin "baserom.z64", 0xB9A438, 0xC

glabel D_801232A4
    .incbin "baserom.z64", 0xB9A444, 0x10

glabel D_801232B4
    .incbin "baserom.z64", 0xB9A454, 0xC

glabel D_801232C0
    .incbin "baserom.z64", 0xB9A460, 0xC

glabel D_801232CC
    .incbin "baserom.z64", 0xB9A46C, 0xC8

glabel D_80123394
    .incbin "baserom.z64", 0xB9A534, 0xC8

glabel D_8012345C
    .incbin "baserom.z64", 0xB9A5FC, 0xA0

glabel D_801234FC
    .incbin "baserom.z64", 0xB9A69C, 0xC8

glabel D_801235C4
    .incbin "baserom.z64", 0xB9A764, 0xC8

glabel D_8012368C
    .incbin "baserom.z64", 0xB9A82C, 0xA0

glabel D_8012372C
    .incbin "baserom.z64", 0xB9A8CC, 0xA0

glabel D_801237CC
    .incbin "baserom.z64", 0xB9A96C, 0xC8

glabel D_80123894
    .incbin "baserom.z64", 0xB9AA34, 0x10

glabel D_801238A4
    .incbin "baserom.z64", 0xB9AA44, 0xC

glabel D_801238B0
    .incbin "baserom.z64", 0xB9AA50, 0x5C

glabel D_8012390C
    .incbin "baserom.z64", 0xB9AAAC, 0x10

glabel D_8012391C
    .incbin "baserom.z64", 0xB9AABC, 0xC

glabel D_80123928
    .incbin "baserom.z64", 0xB9AAC8, 0x34

glabel D_8012395C
    .incbin "baserom.z64", 0xB9AAFC, 0x10

glabel D_8012396C
    .incbin "baserom.z64", 0xB9AB0C, 0xC

glabel D_80123978
    .incbin "baserom.z64", 0xB9AB18, 0x5C

glabel D_801239D4
    .incbin "baserom.z64", 0xB9AB74, 0x7C
