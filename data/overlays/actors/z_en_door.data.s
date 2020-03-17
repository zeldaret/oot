.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel En_Door_InitVars
 .word 0x00090A00, 0x00000010, 0x00010000, 0x000001D8
.word EnDoor_Init
.word EnDoor_Destroy
.word EnDoor_Update
.word EnDoor_Draw
glabel D_809FCEA0
 .word 0x00040100, 0x002C0005, 0x02000059, 0x00070300, 0x01870008, 0x03000187, 0xFFFF0000, 0x0001FFFF, 0x04000002
glabel D_809FCEC4
 .word 0x801F0000, 0x30F40FA0
glabel D_809FCECC
 .word 0x0400E758, 0x0400E5B4, 0x04010038, 0x0400E6A0
glabel D_809FCEDC
 .word 0x19191919
glabel D_809FCEE0
 .word 0x3C463C46
glabel D_809FCEE4
 .word 0x0400ECB8, 0x0400EE00, 0x0600F998, 0x0600F938, 0x06004958, 0x06004A10, 0x060013B8, 0x06001420, 0x050047A0, 0x05004978, 0x00000000

