.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel Bg_Spot18_Basket_InitVars
 .word 0x015C0600, 0x00000010, 0x00AF0000, 0x0000021C
.word BgSpot18Basket_Init
.word BgSpot18Basket_Destroy
.word BgSpot18Basket_Update
.word BgSpot18Basket_Draw
glabel D_808B8570
 .word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000100, 0x00000000, 0x07F80000, 0x00360064, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000000, 0x00010000, 0x01000000, 0x05780000, 0x000D0064
glabel D_808B85B8
 .word 0x0A000909, 0x20000000, 0x00000002
.word D_808B8570
glabel D_808B85C8
 .word 0x80002AAA, 0xD5550000
glabel D_808B85D0
 .word 0x00000000
glabel D_808B85D4
 .word 0xC8500064, 0xB0F403E8, 0xB0F801F4, 0x30FC03E8
glabel D_808B85E4
 .word 0xF0600320, 0x0FA00000, 0x00000000

