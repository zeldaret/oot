.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80126280
    .incbin "baserom.z64", 0xB9D420, 0x60

glabel D_801262E0
    .incbin "baserom.z64", 0xB9D480, 0x60

glabel D_80126340
    .incbin "baserom.z64", 0xB9D4E0, 0x300

glabel D_80126640
    .incbin "baserom.z64", 0xB9D7E0, 0xF0

glabel D_80126730
    .incbin "baserom.z64", 0xB9D8D0, 0x30

glabel D_80126760
    .incbin "baserom.z64", 0xB9D900, 0x30

glabel D_80126790
    .incbin "baserom.z64", 0xB9D930, 0x30

glabel D_801267C0
    .incbin "baserom.z64", 0xB9D960, 0x90

glabel D_80126850
    .incbin "baserom.z64", 0xB9D9F0, 0x30

glabel D_80126880
    .incbin "baserom.z64", 0xB9DA20, 0x30

glabel D_801268B0
    .incbin "baserom.z64", 0xB9DA50, 0x30

glabel D_801268E0
    .incbin "baserom.z64", 0xB9DA80, 0x30

glabel D_80126910
    .incbin "baserom.z64", 0xB9DAB0, 0x30

glabel D_80126940
    .incbin "baserom.z64", 0xB9DAE0, 0x30

glabel D_80126970
    .incbin "baserom.z64", 0xB9DB10, 0x30

glabel D_801269A0
    .incbin "baserom.z64", 0xB9DB40, 0x30

glabel D_801269D0
    .incbin "baserom.z64", 0xB9DB70, 0x30

glabel D_80126A00
    .incbin "baserom.z64", 0xB9DBA0, 0x30

glabel D_80126A30
    .incbin "baserom.z64", 0xB9DBD0, 0x30

glabel D_80126A60
    .incbin "baserom.z64", 0xB9DC00, 0x30

glabel D_80126A90
    .incbin "baserom.z64", 0xB9DC30, 0x30

glabel D_80126AC0
    .incbin "baserom.z64", 0xB9DC60, 0x30

glabel D_80126AF0
    .incbin "baserom.z64", 0xB9DC90, 0x30

glabel D_80126B20
    .incbin "baserom.z64", 0xB9DCC0, 0x30

glabel D_80126B50
    .incbin "baserom.z64", 0xB9DCF0, 0x30

glabel D_80126B80
    .incbin "baserom.z64", 0xB9DD20, 0x30

glabel D_80126BB0
    .incbin "baserom.z64", 0xB9DD50, 0x30

glabel D_80126BE0
    .incbin "baserom.z64", 0xB9DD80, 0x30

glabel D_80126C10
    .incbin "baserom.z64", 0xB9DDB0, 0x30

glabel D_80126C40
    .incbin "baserom.z64", 0xB9DDE0, 0x30

glabel D_80126C70
    .incbin "baserom.z64", 0xB9DE10, 0x30

glabel D_80126CA0
    .incbin "baserom.z64", 0xB9DE40, 0x30

glabel D_80126CD0
    .incbin "baserom.z64", 0xB9DE70, 0x30

glabel D_80126D00
    .incbin "baserom.z64", 0xB9DEA0, 0x30

glabel D_80126D30
    .incbin "baserom.z64", 0xB9DED0, 0x30

glabel D_80126D60
    .incbin "baserom.z64", 0xB9DF00, 0x30

glabel D_80126D90
    .incbin "baserom.z64", 0xB9DF30, 0x30

glabel D_80126DC0
    .incbin "baserom.z64", 0xB9DF60, 0x30

glabel D_80126DF0
    .incbin "baserom.z64", 0xB9DF90, 0x90

glabel D_80126E80
    .incbin "baserom.z64", 0xB9E020, 0x30

glabel D_80126EB0
    .incbin "baserom.z64", 0xB9E050, 0x30

glabel D_80126EE0
    .incbin "baserom.z64", 0xB9E080, 0x30

glabel D_80126F10
    .incbin "baserom.z64", 0xB9E0B0, 0x30

glabel D_80126F40
    .incbin "baserom.z64", 0xB9E0E0, 0x10

glabel D_80126F50
    .incbin "baserom.z64", 0xB9E0F0, 0x20

glabel D_80126F70
    .incbin "baserom.z64", 0xB9E110, 0x18

glabel D_80126F88
    .incbin "baserom.z64", 0xB9E128, 0x18

glabel D_80126FA0
    .incbin "baserom.z64", 0xB9E140, 0x18

glabel D_80126FB8
    .incbin "baserom.z64", 0xB9E158, 0x18

glabel D_80126FD0
    .incbin "baserom.z64", 0xB9E170, 0x40

glabel D_80127010
    .incbin "baserom.z64", 0xB9E1B0, 0xC

glabel D_8012701C
    .incbin "baserom.z64", 0xB9E1BC, 0xC

glabel D_80127028
    .incbin "baserom.z64", 0xB9E1C8, 0xC

glabel D_80127034
    .incbin "baserom.z64", 0xB9E1D4, 0x64

glabel D_80127098
    .incbin "baserom.z64", 0xB9E238, 0x8
