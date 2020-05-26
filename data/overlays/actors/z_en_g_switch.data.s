.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel D_80A236E0
 .word 0x00000000
glabel D_80A236E4
 .word 0x0A000900, 0x20010000, 0x02000000, 0x00000000, 0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010000, 0x000D0028, 0x00000000, 0x00000000, 0x00000001, 0x00020013, 0x00140000
glabel En_G_Switch_InitVars
 .word 0x01170600, 0x00000030, 0x00010000, 0x000012F8
.word EnGSwitch_Init
.word EnGSwitch_Destroy
.word EnGSwitch_Update
.word 0x00000000
glabel D_80A2373C
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_80A23748
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_80A23754
 .word 0x00020405, 0x07000000
glabel D_80A2375C
 .word 0x04042140, 0x04042160, 0x04042180, 0x040421C0, 0x040421A0, 0x040421E0, 0x00000000, 0x00000000, 0x00000000

