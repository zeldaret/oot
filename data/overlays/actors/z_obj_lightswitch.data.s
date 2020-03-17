.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel Obj_Lightswitch_InitVars
 .word 0x01500000, 0x00000010, 0x012A0000, 0x000001C4
.word ObjLightswitch_Init
.word ObjLightswitch_Destroy
.word ObjLightswitch_Update
.word ObjLightswitch_Draw
glabel D_80B97F20
 .word 0x00000000, 0x00000000, 0x00000000, 0x00200000, 0x00000000, 0x00010100, 0x00000000, 0x00000000, 0x00130064
glabel D_80B97F44
 .word 0x0A000939, 0x20000000, 0x00000001
.word D_80B97F20
glabel D_80B97F54
 .word 0x0000000C, 0x003CFF00
glabel D_80B97F5C
 .word 0x06000C20, 0x06000420, 0x06001420
glabel D_80B97F68
 .word 0xC4D56000, 0x4452C000, 0xC3340000
glabel D_80B97F74
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_80B97F80
 .word 0xC8500064, 0xB0F403E8, 0xB0F801F4, 0x30FC03E8

