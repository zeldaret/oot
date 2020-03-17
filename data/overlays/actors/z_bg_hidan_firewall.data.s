.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel Bg_Hidan_Firewall_InitVars
 .word 0x000C0100, 0x00000000, 0x002C0000, 0x000001A0
.word BgHidanFirewall_Init
.word BgHidanFirewall_Destroy
.word BgHidanFirewall_Update
.word 0x00000000
glabel D_80886CD0
 .word 0x0A110009, 0x20010000, 0x00000000, 0x20000000, 0x01040000, 0xFFCFFFFF, 0x00000000, 0x19000100, 0x001E0053, 0x00000000, 0x00000000
glabel D_80886CFC
 .word 0x01000050, 0x0064FF00
glabel D_80886D04
 .word 0x06015D20, 0x06016120, 0x06016520, 0x06016920, 0x06016D20, 0x06017120, 0x06017520, 0x06017920, 0x00000000, 0x00000000, 0x00000000

