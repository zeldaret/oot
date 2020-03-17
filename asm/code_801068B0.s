.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_801068B0
/* B7DA50 801068B0 27BDFFF0 */  addiu $sp, $sp, -0x10
/* B7DA54 801068B4 AFA4000C */  sw    $a0, 0xc($sp)
/* B7DA58 801068B8 AFA50008 */  sw    $a1, 8($sp)
/* B7DA5C 801068BC 8FAE000C */  lw    $t6, 0xc($sp)
/* B7DA60 801068C0 8FAF0008 */  lw    $t7, 8($sp)
/* B7DA64 801068C4 15CF0003 */  bne   $t6, $t7, .L801068D4
/* B7DA68 801068C8 00000000 */   nop   
/* B7DA6C 801068CC 10000034 */  b     .L801069A0
/* B7DA70 801068D0 00801025 */   move  $v0, $a0
.L801068D4:
/* B7DA74 801068D4 8FB8000C */  lw    $t8, 0xc($sp)
/* B7DA78 801068D8 8FB90008 */  lw    $t9, 8($sp)
/* B7DA7C 801068DC 0319082B */  sltu  $at, $t8, $t9
/* B7DA80 801068E0 10200013 */  beqz  $at, .L80106930
/* B7DA84 801068E4 00000000 */   nop   
/* B7DA88 801068E8 00C03825 */  move  $a3, $a2
/* B7DA8C 801068EC 10E0000E */  beqz  $a3, .L80106928
/* B7DA90 801068F0 24C6FFFF */   addiu $a2, $a2, -1
.L801068F4:
/* B7DA94 801068F4 8FA80008 */  lw    $t0, 8($sp)
/* B7DA98 801068F8 8FAA000C */  lw    $t2, 0xc($sp)
/* B7DA9C 801068FC 91090000 */  lbu   $t1, ($t0)
/* B7DAA0 80106900 A1490000 */  sb    $t1, ($t2)
/* B7DAA4 80106904 8FAD0008 */  lw    $t5, 8($sp)
/* B7DAA8 80106908 8FAB000C */  lw    $t3, 0xc($sp)
/* B7DAAC 8010690C 25AE0001 */  addiu $t6, $t5, 1
/* B7DAB0 80106910 256C0001 */  addiu $t4, $t3, 1
/* B7DAB4 80106914 AFAC000C */  sw    $t4, 0xc($sp)
/* B7DAB8 80106918 AFAE0008 */  sw    $t6, 8($sp)
/* B7DABC 8010691C 00C03825 */  move  $a3, $a2
/* B7DAC0 80106920 14E0FFF4 */  bnez  $a3, .L801068F4
/* B7DAC4 80106924 24C6FFFF */   addiu $a2, $a2, -1
.L80106928:
/* B7DAC8 80106928 10000019 */  b     .L80106990
/* B7DACC 8010692C 00000000 */   nop   
.L80106930:
/* B7DAD0 80106930 8FAF000C */  lw    $t7, 0xc($sp)
/* B7DAD4 80106934 01E6C021 */  addu  $t8, $t7, $a2
/* B7DAD8 80106938 2719FFFF */  addiu $t9, $t8, -1
/* B7DADC 8010693C AFB9000C */  sw    $t9, 0xc($sp)
/* B7DAE0 80106940 8FA80008 */  lw    $t0, 8($sp)
/* B7DAE4 80106944 01064821 */  addu  $t1, $t0, $a2
/* B7DAE8 80106948 252AFFFF */  addiu $t2, $t1, -1
/* B7DAEC 8010694C AFAA0008 */  sw    $t2, 8($sp)
/* B7DAF0 80106950 00C03825 */  move  $a3, $a2
/* B7DAF4 80106954 10E0000E */  beqz  $a3, .L80106990
/* B7DAF8 80106958 24C6FFFF */   addiu $a2, $a2, -1
.L8010695C:
/* B7DAFC 8010695C 8FAB0008 */  lw    $t3, 8($sp)
/* B7DB00 80106960 8FAD000C */  lw    $t5, 0xc($sp)
/* B7DB04 80106964 916C0000 */  lbu   $t4, ($t3)
/* B7DB08 80106968 A1AC0000 */  sb    $t4, ($t5)
/* B7DB0C 8010696C 8FB80008 */  lw    $t8, 8($sp)
/* B7DB10 80106970 8FAE000C */  lw    $t6, 0xc($sp)
/* B7DB14 80106974 2719FFFF */  addiu $t9, $t8, -1
/* B7DB18 80106978 25CFFFFF */  addiu $t7, $t6, -1
/* B7DB1C 8010697C AFAF000C */  sw    $t7, 0xc($sp)
/* B7DB20 80106980 AFB90008 */  sw    $t9, 8($sp)
/* B7DB24 80106984 00C03825 */  move  $a3, $a2
/* B7DB28 80106988 14E0FFF4 */  bnez  $a3, .L8010695C
/* B7DB2C 8010698C 24C6FFFF */   addiu $a2, $a2, -1
.L80106990:
/* B7DB30 80106990 10000003 */  b     .L801069A0
/* B7DB34 80106994 00801025 */   move  $v0, $a0
/* B7DB38 80106998 10000001 */  b     .L801069A0
/* B7DB3C 8010699C 00000000 */   nop   
.L801069A0:
/* B7DB40 801069A0 03E00008 */  jr    $ra
/* B7DB44 801069A4 27BD0010 */   addiu $sp, $sp, 0x10
