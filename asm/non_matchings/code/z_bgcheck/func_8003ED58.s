glabel DynaPolyInfo_Free
/* AB5EF8 8003ED58 27BDFFE0 */  addiu $sp, $sp, -0x20
/* AB5EFC 8003ED5C AFA40020 */  sw    $a0, 0x20($sp)
/* AB5F00 8003ED60 AFBF001C */  sw    $ra, 0x1c($sp)
/* AB5F04 8003ED64 AFB00018 */  sw    $s0, 0x18($sp)
/* AB5F08 8003ED68 3C048014 */  lui   $a0, %hi(D_80138C48) # $a0, 0x8014
/* AB5F0C 8003ED6C 00C08025 */  move  $s0, $a2
/* AB5F10 8003ED70 AFA50024 */  sw    $a1, 0x24($sp)
/* AB5F14 8003ED74 0C00084C */  jal   osSyncPrintf
/* AB5F18 8003ED78 24848C48 */   addiu $a0, %lo(D_80138C48) # addiu $a0, $a0, -0x73b8
/* AB5F1C 8003ED7C 3C048014 */  lui   $a0, %hi(D_80138C50) # $a0, 0x8014
/* AB5F20 8003ED80 24848C50 */  addiu $a0, %lo(D_80138C50) # addiu $a0, $a0, -0x73b0
/* AB5F24 8003ED84 0C00084C */  jal   osSyncPrintf
/* AB5F28 8003ED88 02002825 */   move  $a1, $s0
/* AB5F2C 8003ED8C 3C048014 */  lui   $a0, %hi(D_80138C74) # $a0, 0x8014
/* AB5F30 8003ED90 0C00084C */  jal   osSyncPrintf
/* AB5F34 8003ED94 24848C74 */   addiu $a0, %lo(D_80138C74) # addiu $a0, $a0, -0x738c
/* AB5F38 8003ED98 0C00FA4D */  jal   func_8003E934
/* AB5F3C 8003ED9C 02002025 */   move  $a0, $s0
/* AB5F40 8003EDA0 1440001A */  bnez  $v0, .L8003EE0C
/* AB5F44 8003EDA4 8FA40020 */   lw    $a0, 0x20($sp)
/* AB5F48 8003EDA8 2401FFFF */  li    $at, -1
/* AB5F4C 8003EDAC 1601000C */  bne   $s0, $at, .L8003EDE0
/* AB5F50 8003EDB0 3C048014 */   lui   $a0, %hi(D_80138CE4)
/* AB5F54 8003EDB4 3C048014 */  lui   $a0, %hi(D_80138C78) # $a0, 0x8014
/* AB5F58 8003EDB8 0C00084C */  jal   osSyncPrintf
/* AB5F5C 8003EDBC 24848C78 */   addiu $a0, %lo(D_80138C78) # addiu $a0, $a0, -0x7388
/* AB5F60 8003EDC0 3C048014 */  lui   $a0, %hi(D_80138C80) # $a0, 0x8014
/* AB5F64 8003EDC4 0C00084C */  jal   osSyncPrintf
/* AB5F68 8003EDC8 24848C80 */   addiu $a0, %lo(D_80138C80) # addiu $a0, $a0, -0x7380
/* AB5F6C 8003EDCC 3C048014 */  lui   $a0, %hi(D_80138CE0) # $a0, 0x8014
/* AB5F70 8003EDD0 0C00084C */  jal   osSyncPrintf
/* AB5F74 8003EDD4 24848CE0 */   addiu $a0, %lo(D_80138CE0) # addiu $a0, $a0, -0x7320
/* AB5F78 8003EDD8 10000020 */  b     .L8003EE5C
/* AB5F7C 8003EDDC 8FBF001C */   lw    $ra, 0x1c($sp)
.L8003EDE0:
/* AB5F80 8003EDE0 0C00084C */  jal   osSyncPrintf
/* AB5F84 8003EDE4 24848CE4 */   addiu $a0, %lo(D_80138CE4)
/* AB5F88 8003EDE8 3C048014 */  lui   $a0, %hi(D_80138CEC) # $a0, 0x8014
/* AB5F8C 8003EDEC 24848CEC */  addiu $a0, %lo(D_80138CEC) # addiu $a0, $a0, -0x7314
/* AB5F90 8003EDF0 0C00084C */  jal   osSyncPrintf
/* AB5F94 8003EDF4 02002825 */   move  $a1, $s0
/* AB5F98 8003EDF8 3C048014 */  lui   $a0, %hi(D_80138D5C) # $a0, 0x8014
/* AB5F9C 8003EDFC 0C00084C */  jal   osSyncPrintf
/* AB5FA0 8003EE00 24848D5C */   addiu $a0, %lo(D_80138D5C) # addiu $a0, $a0, -0x72a4
/* AB5FA4 8003EE04 10000015 */  b     .L8003EE5C
/* AB5FA8 8003EE08 8FBF001C */   lw    $ra, 0x1c($sp)
.L8003EE0C:
/* AB5FAC 8003EE0C 248407C0 */  addiu $a0, $a0, 0x7c0
/* AB5FB0 8003EE10 0C00FAE1 */  jal   DynaPolyInfo_GetActor
/* AB5FB4 8003EE14 02002825 */   move  $a1, $s0
/* AB5FB8 8003EE18 1040000F */  beqz  $v0, .L8003EE58
/* AB5FBC 8003EE1C 8FA40024 */   lw    $a0, 0x24($sp)
/* AB5FC0 8003EE20 00107880 */  sll   $t7, $s0, 2
/* AB5FC4 8003EE24 01F07823 */  subu  $t7, $t7, $s0
/* AB5FC8 8003EE28 000F78C0 */  sll   $t7, $t7, 3
/* AB5FCC 8003EE2C 01F07821 */  addu  $t7, $t7, $s0
/* AB5FD0 8003EE30 240EFFFF */  li    $t6, -1
/* AB5FD4 8003EE34 000F7880 */  sll   $t7, $t7, 2
/* AB5FD8 8003EE38 AC4E014C */  sw    $t6, 0x14c($v0)
/* AB5FDC 8003EE3C 008FC021 */  addu  $t8, $a0, $t7
/* AB5FE0 8003EE40 0010C840 */  sll   $t9, $s0, 1
/* AB5FE4 8003EE44 AF000004 */  sw    $zero, 4($t8)
/* AB5FE8 8003EE48 00991821 */  addu  $v1, $a0, $t9
/* AB5FEC 8003EE4C 9468138C */  lhu   $t0, 0x138c($v1)
/* AB5FF0 8003EE50 35090002 */  ori   $t1, $t0, 2
/* AB5FF4 8003EE54 A469138C */  sh    $t1, 0x138c($v1)
.L8003EE58:
/* AB5FF8 8003EE58 8FBF001C */  lw    $ra, 0x1c($sp)
.L8003EE5C:
/* AB5FFC 8003EE5C 8FB00018 */  lw    $s0, 0x18($sp)
/* AB6000 8003EE60 27BD0020 */  addiu $sp, $sp, 0x20
/* AB6004 8003EE64 03E00008 */  jr    $ra
/* AB6008 8003EE68 00000000 */   nop   

