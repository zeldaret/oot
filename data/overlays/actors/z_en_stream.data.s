.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel En_Stream_InitVars
 .word 0x01600100, 0x00000010, 0x013B0000, 0x00000158
.word EnStream_Init
.word EnStream_Destroy
.word EnStream_Update
.word EnStream_Draw
glabel D_80B0BCC0
 .word 0x48500014, 0x00000000, 0x00000000, 0x00000000

