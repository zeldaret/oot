.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel En_Niw_Girl_InitVars
 .word 0x019A0400, 0x00000019, 0x016A0000, 0x000002FC
.word EnNiwGirl_Init
.word EnNiwGirl_Destroy
.word EnNiwGirl_Update
.word EnNiwGirl_Draw
glabel D_80AB99A0
 .word 0x0A000039, 0x20010000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000100, 0x000A001E, 0x00000000, 0x00000000
glabel D_80AB99CC
 .word 0x3E4CCCCD, 0x3E4CCCCD, 0x3E4CCCCD
glabel D_80AB99D8
 .word 0x06004178, 0x06004978, 0x06005178, 0x00000000, 0x00000000, 0x00000000

