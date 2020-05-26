.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel En_Cs_InitVars
 .word 0x016C0400, 0x00000009, 0x01450000, 0x00000344
.word EnCs_Init
.word EnCs_Destroy
.word EnCs_Update
.word EnCs_Draw
glabel D_809E28C0
 .word 0x0A000039, 0x20010000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000100, 0x0012003F, 0x00000000, 0x00000000
glabel D_809E28EC
 .word 0x00000000, 0x00000000, 0xFF000000
glabel D_809E28F8
 .word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
glabel D_809E2918
 .word 0x06000700, 0x3F800000, 0x02000000, 0xC1200000, 0x06000E10, 0x3F800000, 0x02000000, 0xC1200000, 0x06001588, 0x3F800000, 0x02000000, 0xC1200000, 0x0600195C, 0x3F800000, 0x02000000, 0xC1200000
glabel D_809E2958
 .word 0x00000046, 0x00000001, 0x00000001
glabel D_809E2964
 .word 0x06002130, 0x06002930, 0x06003130
glabel D_809E2970
 .word 0x43FA0000, 0x44480000, 0x00000000, 0x00000000

