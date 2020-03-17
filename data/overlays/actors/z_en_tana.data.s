.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel En_Tana_InitVars
 .word 0x00C20600, 0x00000009, 0x00B20000, 0x0000014C
.word EnTana_Init
.word EnTana_Destroy
.word EnTana_Update
.word 0x00000000
glabel D_80B18200
 .word D_80B18230
.word D_80B18238
glabel D_80B18208
 .word func_80B17FC4
.word func_80B1809C
.word func_80B1809C
glabel D_80B18214
 .word 0x06000B80, 0x060027E8, 0x060027E8
glabel D_80B18220
 .word 0x00000000, 0x06000E08, 0x06001608, 0x00000000

