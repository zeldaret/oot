.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel En_Kz_InitVars
 .word 0x01640400, 0x00000009, 0x00FF0000, 0x000002D8
.word EnKz_Init
.word EnKz_Destroy
.word EnKz_Update
.word EnKz_Draw
glabel D_80A9D8C0
 .word 0x0A000039, 0x20010000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000100, 0x00500078, 0x00000000, 0x00000000
glabel D_80A9D8EC
 .word 0x00000000, 0x00000000, 0xFF000000
glabel D_80A9D8F8
 .word 0x0600075C, 0x3F800000, 0x00000000, 0xBF800000, 0x00000000, 0x00000000, 0x0600075C, 0x3F800000, 0x00000000, 0xBF800000, 0x00000000, 0xC1200000, 0x0600046C, 0x3F800000, 0x00000000, 0xBF800000, 0x00000000, 0xC1200000
glabel D_80A9D940
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_80A9D94C
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_80A9D958
 .word 0x45228000, 0x00000000, 0x00000000
glabel D_80A9D964
 .word 0x06001470, 0x06001870, 0x06001C70

