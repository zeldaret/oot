.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel D_80977C70
 .word func_80977854
.word func_80977874
.word func_809778AC
glabel D_80977C7C
 .word func_80977944
.word func_80977950
glabel Demo_Ext_InitVars
 .word 0x01180400, 0x00000010, 0x005A0000, 0x00000184
.word DemoExt_Init
.word DemoExt_Destroy
.word DemoExt_Update
.word DemoExt_Draw
.word 0x00000000, 0x00000000, 0x00000000

