.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel Bg_Haka_Megane_InitVars
 .word 0x00AE0600, 0x000000B0, 0x00010000, 0x0000016C
.word BgHakaMegane_Init
.word BgHakaMegane_Destroy
.word BgHakaMegane_Update
.word 0x00000000
glabel D_8087DD50
 .word 0x48500064
glabel D_8087DD54
 .word 0x06001830, 0x06001AB8, 0x00000000, 0x06004330, 0x060044D0, 0x00000000, 0x06004780, 0x06004940, 0x00000000, 0x06004B00, 0x00000000, 0x06004CC0, 0x00000000
glabel D_8087DD88
 .word 0x06001060, 0x06001920, 0x060003F0, 0x060040F0, 0x060043B0, 0x06001120, 0x060045A0, 0x060047F0, 0x060018F0, 0x060049B0, 0x06003CF0, 0x06004B70, 0x06002ED0, 0x00000000

