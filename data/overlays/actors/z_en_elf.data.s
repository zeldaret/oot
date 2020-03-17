.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel En_Elf_InitVars
 .word 0x00180700, 0x02000030, 0x00010000, 0x000002D0
.word EnElf_Init
.word EnElf_Destroy
.word EnElf_Update
.word EnElf_Draw
glabel D_80A06020
 .word 0x48500008
glabel D_80A06024
 .word 0x437F0000, 0x437F0000, 0x437F0000, 0x437F0000, 0x437F0000, 0x435C0000, 0x435C0000, 0x437F0000
glabel D_80A06044
 .word 0x437F0000, 0x437F0000, 0x437F0000, 0x437F0000, 0x437F0000, 0x42480000, 0x42C80000, 0x437F0000
glabel D_80A06064
 .word 0x00000001, 0x00000102, 0x00010002, 0x00010002, 0x01000001, 0x02000001, 0x02000100, 0x02010101, 0x00010001, 0x00010100
glabel D_80A0608C
 .word 0x00000000, 0xBD4CCCCD, 0x00000000
glabel D_80A06098
 .word 0x00000000, 0xBCCCCCCD, 0x00000000
glabel D_80A060A4
 .word 0x00000000, 0x00000000, 0x00000000

