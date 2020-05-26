.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel D_80B38D40
 .word 0x0A000900, 0x20010000, 0x00000000, 0x00000000, 0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010000, 0x0014001E, 0x00000000, 0x00000000
glabel En_Wonder_Item_InitVars
 .word 0x01120600, 0x00000000, 0x00010000, 0x000001D0
.word EnWonderItem_Init
.word EnWonderItem_Destroy
.word EnWonderItem_Update
.word 0x00000000
glabel D_80B38D8C
 .word 0x000C0006, 0x000E000F, 0x00030008, 0x0009000A, 0x00000001, 0x00020012
glabel D_80B38DA4
 .word 0x00000702, 0x0001F820, 0x00000040, 0x00000008, 0x00000004, 0x00000010, 0x00000080
glabel D_80B38DC0
 .word 0x00FF00FF, 0x000000FF, 0x000000FF, 0x000000FF, 0x00FF00FF, 0x00000000, 0x000000FF, 0x00000000, 0x000000FF, 0x00800080, 0x00800080, 0x00800000, 0x00800000, 0x00800000, 0x00800000, 0x00800000, 0x00000000, 0x00800000, 0x00000000, 0x00800000

