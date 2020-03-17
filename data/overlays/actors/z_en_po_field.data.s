.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel En_Po_Field_InitVars
 .word 0x01750500, 0x00001035, 0x006D0000, 0x000002DC
.word EnPoField_Init
.word EnPoField_Destroy
.word EnPoField_Update
.word EnPoField_Draw
glabel D_80AD7080
 .word 0x03000939, 0x10010000, 0x00000000, 0x00000000, 0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, 0x00190032, 0x00140000, 0x00000000
glabel D_80AD70AC
 .word 0x0A110000, 0x10010000, 0x00000000, 0xFFCFFFFF, 0x01040000, 0x00000000, 0x00000000, 0x19000000, 0x000A001E, 0x00000000, 0x00000000
glabel D_80AD70D8
 .word 0x04000019, 0x00322800
glabel D_80AD70E0
 .word 0x00020102, 0x11020212, 0x01020402, 0x02020202, 0x02000000, 0x00000104, 0x02020804, 0x00000400
glabel D_80AD7100
 .word 0x00000000
glabel D_80AD7104
 .word 0xC47A0000, 0x00000000, 0x45CB2000
glabel D_80AD7110
 .word 0x304C0C80
glabel D_80AD7114
 .word 0x00000000, 0x40400000, 0x00000000
glabel D_80AD7120
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_80AD712C
 .word 0xFFAAFF64, 0x0096FF55, 0x00F80000, 0x06001B70, 0xFFFFAAFF, 0xC800A000, 0xFFF10000, 0x06001370
glabel D_80AD714C
 .word 0x00000000, 0x44AF0000, 0x00000000, 0x00000000, 0x00000000

