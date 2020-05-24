.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

.align 4

glabel En_Gb_InitVars
 .word 0x01B80400, 0x00000009, 0x01890000, 0x00000438
.word EnGb_Init
.word EnGb_Destroy
.word EnGb_Update
.word EnGb_Draw
glabel D_80A30660
 .word 0xFFFFAAFF, 0xFFC800FF, 0x0600A870, 0xFFF10000, 0xFFFFAAFF, 0x009600FF, 0x0600B070, 0xFFF40000, 0xFFAAFFFF, 0x640096FF, 0x0600B870, 0xFFF80000
glabel D_80A30690
 .word 0x0A000039, 0x01000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000100, 0x0028004B, 0x00000000, 0x00000000
glabel D_80A306BC
 .word 0x0A000039, 0x01000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000100, 0x00040014, 0x00000000, 0x00000000, 0x0A000039, 0x01000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000100, 0x00040014, 0x00000000, 0x00000000, 0x0A000039, 0x01000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000100, 0x000A0014, 0x00000000, 0x00000000
glabel D_80A30740
 .word 0x801F0006, 0x304C0898
glabel D_80A30748
 .word 0xC1000000, 0x42E00000, 0xC1000000, 0xC0400000, 0x42E00000, 0x41E80000, 0x41F80000, 0x42E00000, 0x41E80000, 0x41F80000, 0x42E00000, 0xC1000000
glabel D_80A30778
 .word 0xC2400000, 0x00000000, 0x42080000, 0xC25C0000, 0x00000000, 0x42440000, 0xC2400000, 0x00000000, 0x42700000
glabel D_80A3079C
 .word 0x00000000

