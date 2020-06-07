.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel En_Anubice_Fire_InitVars
 .word 0x00E10500, 0x00000010, 0x00D60000, 0x000001F4
.word EnAnubiceFire_Init
.word EnAnubiceFire_Destroy
.word EnAnubiceFire_Update
.word EnAnubiceFire_Draw
glabel D_809B31E0
 .word 0x0A110900, 0x10010000, 0x00000000, 0xFFCFFFFF, 0x01040000, 0xFFCFFFFF, 0x00000000, 0x01010000, 0x00000000, 0x00000000, 0x00000000
glabel D_809B320C
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_809B3218
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_809B3224
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_809B3230
 .word 0xFFFF00FF
glabel D_809B3234
 .word 0xFF0000FF
glabel D_809B3238
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_809B3244
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_809B3250
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_809B325C
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_809B3268
 .word 0xFFFF00FF
glabel D_809B326C
 .word 0xFF0000FF
glabel D_809B3270
 .word 0x040529B0, 0x04052DB0, 0x040531B0, 0x040535B0, 0x040539B0, 0x040535B0, 0x040531B0, 0x04052DB0

