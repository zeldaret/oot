.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel En_Niw_Lady_InitVars
 .word 0x013C0400, 0x00000019, 0x01100000, 0x000002FC
.word EnNiwLady_Init
.word EnNiwLady_Destroy
.word EnNiwLady_Update
.word 0x00000000
glabel D_80ABB3A0
 .word 0x50365070, 0x50725037, 0x50385039, 0x503A503B, 0x503D503C
glabel D_80ABB3B4
 .word 0x02000400, 0x08001000, 0x20004000, 0x80000000
glabel D_80ABB3C4
 .word 0x0A000039, 0x20010000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010100, 0x000A000A, 0x00000000, 0x00000000
glabel D_80ABB3F0
 .byte 0x50, 0x3E, 0x50, 0x3F, 0x50, 0x47
glabel D_80ABB3F6
 .byte 0x50, 0x40, 0x50, 0x42
glabel D_80ABB3FA
 .byte 0x50, 0x43, 0x50, 0x44
glabel D_80ABB3FE
 .byte 0x00, 0xCF
glabel D_80ABB400
 .word 0x50455042, 0x50270000
glabel D_80ABB408
 .word 0x060008C8, 0x060010C8, 0x060018C8, 0x00000000, 0x00000000, 0x00000000

