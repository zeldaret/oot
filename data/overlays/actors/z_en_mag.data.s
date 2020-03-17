.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel En_Mag_InitVars
 .word 0x01710600, 0x00000030, 0x014A0000, 0x0000E328
.word EnMag_Init
.word EnMag_Destroy
.word EnMag_Update
.word EnMag_Draw
glabel D_80AA5EC0
 .word 0x00000000
glabel D_80AA5EC4
 .word 0x00000000
glabel D_80AA5EC8
 .word 0x00000000
glabel D_80AA5ECC
 .word 0x00000000
glabel D_80AA5ED0
 .word 0x17180C18, 0x171D1B18, 0x15150E1B
glabel D_80AA5EDC
 .word 0x191B0E1C, 0x1C1C1D0A, 0x1B1D0000
glabel D_80AA5EE8
 .word 0x06020000, 0x06020800, 0x06021000, 0x06021800, 0x06022000, 0x06022800, 0x06023000, 0x06023800, 0x06024000, 0x00000000

