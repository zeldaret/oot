.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.balign 16

glabel D_8014B2F0
    .word 0x00000000

glabel D_8014B2F4
    .word 0x00000000

glabel D_8014B2F8
    .word 0x00000000

glabel D_8014B2FC
    .word 0x00000000

glabel D_8014B300
    .word 0x00000000

glabel D_8014B304
    .word 0x00000000

glabel D_8014B308
    .word 0x00000000, 0x00000000

glabel D_8014B310
    .word 0x00FF0000

glabel D_8014B314
    .word 0x00000000

glabel D_8014B318
    .word 0x00000000

glabel D_8014B31C
    .word 0x00000000

# english message entry table
glabel D_8014B320
    .incbin "baserom.z64", 0xBC24C0, 0x4228

# german message entry table
glabel D_8014F548
    .incbin "baserom.z64", 0xBC66E8, 0x2110

# french message entry table
glabel D_80151658
    .incbin "baserom.z64", 0xBC87F8, 0x2110

# credits (staff) message entry table
glabel D_80153768
    .incbin "baserom.z64", 0xBCA908, 0x188

glabel D_801538F0
    .word D_8014B320

glabel D_801538F4
    .word D_8014F548

glabel D_801538F8
    .word D_80151658

glabel D_801538FC
    .word D_80153768

glabel D_80153900
    .word 0x00FF00FF, 0x00FF0032, 0x00140000, 0x00FF003C, 0x000000FF, 0x00FF00FF, 0x00FF00FF, 0x00FF00FF, 0x00FF00FF, 0x00FF00FF, 0x00FF00FF, 0x00FF00FF

glabel D_80153930
    .word 0x00000000, 0x000000DC, 0x00960000, 0x00000000, 0x00000000, 0x00000000

glabel D_80153948
    .byte 0x00, 0x01, 0x00

glabel D_8015394B
    .byte 0x02

glabel D_8015394C
    .word 0x00000000, 0x00000000, 0x00000000

glabel D_80153958
    .hword 0x0000

glabel D_8015395A
    .hword 0x0000

glabel D_8015395C
    .hword 0x0000

glabel D_8015395E
    .hword 0x0000

glabel D_80153960
    .hword 0x0000

glabel D_80153962
    .hword 0x0000

glabel D_80153964
    .hword 0x0000

glabel D_80153966
    .hword 0x0000

glabel D_80153968
    .word 0x00000000

glabel D_8015396C
    .word 0x00000001, 0x00020003, 0x00040005, 0x00080007, 0x00060009

glabel D_80153980
    .word 0x000A000B

glabel D_80153984
    .word 0x00000000

glabel D_80153988
    .word 0x3F99999A, 0x3FC00000, 0x3FE66666, 0x40000000, 0x40066666, 0x400CCCCD, 0x40066666, 0x40000000

glabel D_801539A8
    .word 0x3F19999A, 0x3F400000, 0x3F666666, 0x3F800000, 0x3F866666, 0x3F8CCCCD, 0x3F866666, 0x3F800000

glabel D_801539C8
    .word 0x000000C8, 0x00500032, 0x00FF0082

glabel D_801539D4
    .word 0x00000000, 0x00000000, 0x00FF0082

glabel D_801539E0
    .word 0x00000000

glabel D_801539E4
    .word 0x00C80000

glabel D_801539E8
    .word 0x00500000

glabel D_801539EC
    .word 0x000C0000

glabel D_801539F0
    .word 0x00000000

glabel D_801539F4
    .word 0x00000000

glabel D_801539F8
    .word 0x00000000

glabel D_801539FC
    .incbin "baserom.z64", 0xBCAB9C, 0x244

glabel D_80153C40
    .word 0x004A004A, 0x004A0000

glabel D_80153C48
    .word 0x00480048, 0x00480000

glabel D_80153C50
    .hword 0x0000

glabel D_80153C52
    .hword 0x0001

glabel D_80153C54
    .hword 0x0003

glabel D_80153C56
    .hword 0x0002

glabel D_80153C58
    .word 0x00010002, 0x00040008, 0x00100020, 0x01000080

glabel D_80153C68
    .word 0x00400200, 0x04000800, 0x10000000, 0x01990198

glabel D_80153C78
    .word 0x018A017E, 0x018A018B, 0x01CB0000, 0x00000000, 0x00000000, 0x00010000, 0x00000000

glabel D_80153C94
    .word 0x02002940, 0x02002A40, 0x02002B40, 0x02002C40, 0x02002D40

glabel D_80153CA8
    .word 0x005000FF, 0x00960064, 0x00FF00C8

glabel D_80153CB4
    .word 0x000A000A, 0x000A0032, 0x00FF0032

glabel D_80153CC0
    .word 0x00FF00FF, 0x003200FF, 0x00FF00B4

glabel D_80153CCC
    .word 0x000A000A, 0x000A006E, 0x006E0032

glabel D_80153CD8
    .word 0x000C0000

glabel D_80153CDC
    .word 0x00010000

glabel D_80153CE0
    .word 0x00340033, 0x00350036, 0x00370025, 0x00440045, 0x00460047, 0x00480049

glabel D_80153CF8
    .word 0x00000000

glabel D_80153CFC
    .word 0x00000000

glabel D_80153D00
    .word 0x00220022, 0x00220022, 0x00220022

glabel D_80153D0C
    .word 0x008E008E, 0x008E008E, 0x00AE008E

glabel D_80153D18
    .word 0x00260026, 0x00260026, 0x00AE0026

glabel D_80153D24
    .word 0x005A005A, 0x005A005A, 0x00AE005A

glabel D_80153D30
    .word 0x003B003B, 0x003B003B, 0x0022003B, 0x04000400, 0x02000000, 0x10380008, 0x200A088B, 0x00070009, 0x000A107E, 0x20082007, 0x00150016, 0x00170003, 0x0000270B, 0x00C8012C, 0x012DFFDA, 0x00140016, 0x00140016

glabel D_80153D74
    .word 0x00000000

glabel D_80153D78
    .word 0x00000000
    .balign 16

glabel D_80153D80
    .word 0x00000000
    .balign 16
