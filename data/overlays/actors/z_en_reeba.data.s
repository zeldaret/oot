.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80AE6560
 .word 0x00E2E1E2, 0xC1E2E2D2, 0xE1E4E6E2, 0x34E2E2E2, 0xE2003400, 0x0000E2E8, 0xE4E2E8E4, 0x10000000
glabel En_Reeba_InitVars
 .word 0x001C0800, 0x08000015, 0x00170000, 0x000002DC
.word EnReeba_Init
.word EnReeba_Destroy
.word EnReeba_Update
.word EnReeba_Draw
glabel D_80AE65A0
 .word 0x05110939, 0x10010000, 0x00000000, 0xFFCFFFFF, 0x08080000, 0xFFCFFFFF, 0x00000000, 0x01050100, 0x00140028, 0x00000000, 0x00000000
glabel D_80AE65CC
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_80AE65D8
 .word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000

