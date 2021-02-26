.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel En_Anubice_InitVars
 .word 0x00E00500, 0x00000015, 0x00D60000, 0x00000314
.word EnAnubice_Init
.word EnAnubice_Destroy
.word EnAnubice_Update
.word EnAnubice_Draw
glabel D_809B22D0
 .word 0x0A000939, 0x10010000, 0x00000000, 0xFFCFFFFF, 0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, 0x001D0067, 0x00000000, 0x00000000
glabel D_809B22FC
 .word 0x00F0F0F0, 0xF0F0F1F2, 0xF0F2F622, 0xF0F0F0F0, 0xF0230000, 0x0000F0F6, 0xF2F0FCF4, 0x00000000
glabel D_809B231C
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_809B2328
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_809B2334
 .word 0x00000000, 0x00000000, 0x00000000

