.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80978570
 .word 0x01860186, 0x01860186, 0x01860186, 0x01860186, 0x01860000
glabel D_80978584
 .word func_80978030
.word func_80978030
.word func_80978030
.word func_80978030
.word func_80978030
.word func_80978030
.word func_80978030
.word func_80978030
.word func_80978030
glabel D_809785A8
 .word func_809783D4
.word func_80978308
glabel D_809785B0
 .word func_809784D4
.word func_80978344
glabel Demo_Geff_InitVars
 .word 0x01B20900, 0x00000030, 0x01860000, 0x00000168
.word DemoGeff_Init
.word DemoGeff_Destroy
.word DemoGeff_Update
.word DemoGeff_Draw
.word 0x00000000, 0x00000000

