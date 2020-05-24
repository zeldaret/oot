.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

.align 4

glabel Obj_Oshihiki_InitVars
 .word 0x00FF0600, 0x00000010, 0x00030000, 0x000001D4
.word ObjOshihiki_Init
.word ObjOshihiki_Destroy
.word ObjOshihiki_Update
.word ObjOshihiki_Draw
glabel D_80B9C9C0
 .word 0x3DCCCCCD, 0x3E2AAAAB, 0x3E4CCCCD, 0x3EAAAAAB, 0x3DCCCCCD, 0x3E2AAAAB, 0x3E4CCCCD, 0x3EAAAAAB
glabel D_80B9C9E0
 .word 0x6E56286E, 0x56286E56, 0x286E5628, 0x6A786E68, 0x50140000, 0x00000000, 0x8E635648, 0x76600000, 0x00000000, 0xD29650D2, 0xAA500000, 0x00000000, 0x6690B6B0, 0xA76464A7, 0x64756160, 0xE8D2B0E8, 0xD2B0E8D2, 0xB0E8D2B0, 0x877D5F87, 0x7D5F877D, 0x5F877D5F, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xE8D2B0E8, 0xD2B0E8D2, 0xB0E8D2B0
glabel D_80B9CA4C
 .word 0x00000001, 0x00030004, 0x00050006, 0x0007000A, 0x000B0000
glabel D_80B9CA60
 .word 0xB0F40708, 0xB0F801F4, 0x30FC05DC
glabel D_80B9CA6C
 .word 0x41EFEB85, 0x3F8147AE, 0xC1EFEB85, 0xC1EFEB85, 0x3F8147AE, 0xC1EFEB85, 0xC1EFEB85, 0x3F8147AE, 0x41EFEB85, 0x41EFEB85, 0x3F8147AE, 0x41EFEB85, 0x00000000, 0x3F8147AE, 0x00000000
glabel D_80B9CAA8
 .word 0xC1F00000, 0x00000000, 0x41F00000, 0x00000000, 0xC1F00000, 0x42700000, 0x41F00000, 0x42700000
glabel D_80B9CAC8
 .word 0x3F800000, 0x3F800000, 0xBF800000, 0x3F800000, 0x3F800000, 0xBF800000, 0xBF800000, 0xBF800000, 0x00000000, 0x00000000

