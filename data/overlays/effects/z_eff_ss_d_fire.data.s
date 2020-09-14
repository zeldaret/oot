.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel Effect_Ss_D_Fire_InitVars
.word 0x00000006
.word EffectSsDFire_Init
glabel D_809A09F8
 .word 0x060090A0, 0x060092A0, 0x060094A0, 0x060096A0, 0x00000000, 0x00000000

