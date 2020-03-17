.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel En_Ice_Hono_InitVars
 .word 0x00F00700, 0x00000000, 0x00010000, 0x000001BC
.word EnIceHono_Init
.word EnIceHono_Destroy
.word EnIceHono_Update
.word EnIceHono_Draw
glabel D_80A74010
 .word 0x0A000039, 0x20010000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000100, 0x00190050, 0x00000000, 0x00000000
glabel D_80A7403C
 .word 0x0A210021, 0x20010000, 0x00000000, 0xFFCFFFFF, 0x00000000, 0x00000000, 0x00000000, 0x01000100, 0x000C003C, 0x00000000, 0x00000000
glabel D_80A74068
 .word 0x801F0000, 0xB04C003C, 0xB0F403E8, 0xB0F80190, 0x30FC03E8
glabel D_80A7407C
 .word 0xB0F403E8, 0xB0F80190, 0x30FC03E8
glabel D_80A74088
 .word 0xB0F403E8, 0xB0F80190, 0x30FC03E8, 0x00000000, 0x00000000, 0x00000000

