.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80AE81A0
 .word 0x06003620, 0x06003960, 0x06003B60
glabel D_80AE81AC
 .word 0x00000000
glabel D_80AE81B0
 .word func_80AE7798
.word func_80AE77B8
.word func_80AE77F8
.word func_80AE7838
.word func_80AE7C64
.word func_80AE7C94
.word func_80AE7CE8
.word func_80AE7D40
glabel D_80AE81D0
 .word func_80AE7FD0
.word func_80AE7FDC
.word func_80AE7D94
glabel En_Rl_InitVars
 .word 0x00A60400, 0x00000010, 0x00A70000, 0x000001AC
.word EnRl_Init
.word EnRl_Destroy
.word EnRl_Update
.word EnRl_Draw
.word 0x00000000

