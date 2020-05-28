.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel Bg_Ice_Shelter_InitVars
 .word 0x00EF0100, 0x00000000, 0x006B0000, 0x00000204
.word BgIceShelter_Init
.word BgIceShelter_Destroy
.word BgIceShelter_Update
.word BgIceShelter_Draw
glabel D_808916F0
 .word 0x3DCCCCCD, 0x3D75C28F, 0x3DCCCCCD, 0x3DCCCCCD, 0x3E800000
glabel D_80891704
 .word 0xFAFAFAFF
glabel D_80891708
 .word 0xB4B4B4FF
glabel D_8089170C
 .word 0x0A002139, 0x20010000, 0x00000000, 0x00000000, 0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, 0x00000000, 0x00000000, 0x00000000
glabel D_80891738
 .word 0x0C000D00, 0x20010000, 0x00000000, 0x00000000, 0x00000000, 0x4FC1FFF6, 0x00000000, 0x00010000, 0x00000000, 0x00000000, 0x00000000
glabel D_80891764
 .word 0x002F0021, 0x002C0029, 0x00640000
glabel D_80891770
 .byte 0x00, 0x50
glabel D_80891772
 .byte 0x00, 0x36, 0x00, 0x5A, 0x00, 0x3C
glabel D_80891778
 .word 0x00C80000
glabel D_8089177C
 .word 0xB0F404B0, 0xB0F801F4, 0x30FC03E8
glabel D_80891788
 .word 0x3E3851EC, 0x3E8A3D71, 0x3E75C28F
glabel D_80891794
 .word 0x00004000, 0x20006000, 0x10005000, 0x30007000
glabel D_808917A4
 .word 0x0000003C, 0x00180054, 0x0030000C, 0x00480024
glabel D_808917B4
 .word 0xBF800000, 0x3F800000
glabel D_808917BC
 .word 0xBAC49BA6, 0xBA6BEDFA, 0xBAD1B717, 0xBAD1B717, 0xBB75C28F
glabel D_808917D0
 .word 0x3F800000, 0x3F19999A, 0x3F99999A, 0x3F800000, 0x3FE66666
glabel D_808917E4
 .word func_80890B8C
.word func_80890B8C
.word func_80890B8C
.word func_80890E00
glabel D_808917F4
 .word func_80890B8C
.word 0x00000000, 0x00000000

