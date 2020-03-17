.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_808B4590
 .word 0x00000000
glabel Bg_Spot15_Rrbox_InitVars
 .word 0x01070100, 0x00000000, 0x00F00000, 0x00000184
.word BgSpot15Rrbox_Init
.word BgSpot15Rrbox_Destroy
.word BgSpot15Rrbox_Update
.word BgSpot15Rrbox_Draw
glabel D_808B45B4
 .word 0xC8500064, 0xB0F403E8, 0xB0F801F4, 0x30FC03E8
glabel D_808B45C4
 .word 0x44408000, 0x44BA4000, 0xC3958000, 0x44408000, 0x44C1C000, 0xC3958000
glabel D_808B45DC
 .word 0x41EFEB85, 0x3C23D70A, 0xC1EFEB85, 0xC1EFEB85, 0x3C23D70A, 0xC1EFEB85, 0xC1EFEB85, 0x3C23D70A, 0x41EFEB85, 0x41EFEB85, 0x3C23D70A, 0x41EFEB85, 0x00000000, 0x3C23D70A, 0x00000000
glabel D_808B4618
 .word 0x00000000, 0x00000000

