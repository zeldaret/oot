.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel D_80885B70
 .word 0x0A110009, 0x20010000, 0x00000000, 0x20000000, 0x01040000, 0xFFCFFFFF, 0x00000000, 0x19000100, 0x00510090, 0x00000000, 0x00000000
glabel D_80885B9C
 .word 0x01000050, 0x0064FF00
glabel D_80885BA4
 .word 0x00510090, 0x3DB851EC, 0x43100000
glabel D_80885BB0
 .word 0x40A00000, 0x002E0058, 0x3D6147AE, 0x42B00000, 0x40400000
glabel Bg_Hidan_Curtain_InitVars
 .word 0x00490600, 0x00000010, 0x00010000, 0x000001A4
.word BgHidanCurtain_Init
.word BgHidanCurtain_Destroy
.word BgHidanCurtain_Update
.word BgHidanCurtain_Draw
.word 0x00000000, 0x00000000, 0x00000000

