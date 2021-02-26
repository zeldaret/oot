.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel En_Ba_InitVars
 .word 0x00DE0500, 0x00000015, 0x00D50000, 0x000003C0
.word EnBa_Init
.word EnBa_Destroy
.word EnBa_Update
.word EnBa_Draw
glabel D_809B8080
 .word 0x00000000, 0x00000000, 0x42000000
glabel D_809B808C
 .word 0x00000000, 0x00000000, 0x00000000, 0x00000010, 0x00000000, 0x00010000, 0x08000000, 0x00000000, 0x00140064, 0x00000000, 0x20000000, 0x00040000, 0x00000000, 0x00000000, 0x01000000, 0x0D000000, 0x00000000, 0x00190064
glabel D_809B80D4
 .word 0x00110900, 0x00000000, 0x00000002
.word D_809B808C
glabel D_809B80E4
 .word 0x3C23D70A, 0x3C23D70A, 0x3C23D70A
glabel D_809B80F0
 .word 0x89170015, 0xB0F805DC, 0xB0FC09C4, 0x304C0000
glabel D_809B8100
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_809B810C
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_809B8118
 .word 0x060024F0, 0x060027F0, 0x060029F0
glabel D_809B8124
 .word 0x00000000, 0x00000000, 0x43E00000

