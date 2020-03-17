.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel Obj_Mure2_InitVars
 .word 0x01510600, 0x00000000, 0x00010000, 0x00000188
.word ObjMure2_Init
.word Actor_Noop
.word ObjMure2_Update
.word 0x00000000
glabel D_80B9A800
 .word 0x4A1C4000, 0x4A1C4000, 0x4A1C4000
glabel D_80B9A80C
 .word 0x4A316E44, 0x4A316E44, 0x4A316E44
glabel D_80B9A818
 .word 0x0009000C, 0x00080000
glabel D_80B9A820
 .word 0x01250125, 0x014E0000
glabel D_80B9A828
 .word 0x00280666, 0x00282CCC, 0x00285999, 0x00288666, 0x0014C000, 0x00501333, 0x00504000, 0x00506CCC, 0x00509333, 0x0050ACCC, 0x0050C666, 0x003CE000
glabel D_80B9A858
 .word 0x00000000, 0x00000000
glabel D_80B9A860
 .word func_80B99F40
.word func_80B9A058
.word func_80B9A158
glabel D_80B9A86C
 .word 0xB0F40064, 0xB0F80834, 0x30FC0064, 0x00000000, 0x00000000

