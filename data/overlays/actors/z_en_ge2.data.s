.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel En_Ge2_InitVars
 .word 0x01860400, 0x00000019, 0x01670000, 0x0000030C
.word EnGe2_Init
.word EnGe2_Destroy
.word EnGe2_Update
.word EnGe2_Draw
glabel D_80A34310
 .word 0x0A000939, 0x10010000, 0x00000000, 0x00000000, 0x00000000, 0x000007A2, 0x00000000, 0x00010100, 0x0014003C, 0x00000000, 0x00000000
glabel D_80A3433C
 .word func_80A33600
.word func_80A3354C
.word func_80A33444
.word func_80A3334C
.word func_80A332D4
.word func_80A331A0
.word func_80A330CC
.word func_80A336C4
.word func_80A339EC
glabel D_80A34360
 .word 0x06009ED4, 0x060098AC, 0x060098AC, 0x060011F4, 0x060098AC, 0x06008D60, 0x060098AC, 0x060098AC, 0x060098AC
glabel D_80A34384
 .word 0x00020002, 0x00000000, 0x02000000
glabel D_80A34390
 .word 0x00000000, 0xBD4CCCCD, 0x00000000
glabel D_80A3439C
 .word 0x00000000, 0xBCCCCCCD, 0x00000000
glabel D_80A343A8
 .word 0xFFFFFF00
glabel D_80A343AC
 .word 0xFF960000
glabel D_80A343B0
 .word 0x44160000, 0x442F0000, 0x00000000
glabel D_80A343BC
 .word 0x06004F78, 0x06005578, 0x06005BF8, 0x00000000, 0x00000000

