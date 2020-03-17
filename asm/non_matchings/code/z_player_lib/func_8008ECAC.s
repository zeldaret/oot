glabel func_8008ECAC
/* B05E4C 8008ECAC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B05E50 8008ECB0 AFBF0014 */  sw    $ra, 0x14($sp)
/* B05E54 8008ECB4 AFA40018 */  sw    $a0, 0x18($sp)
/* B05E58 8008ECB8 90AE0444 */  lbu   $t6, 0x444($a1)
/* B05E5C 8008ECBC 24010056 */  li    $at, 86
/* B05E60 8008ECC0 00A03025 */  move  $a2, $a1
/* B05E64 8008ECC4 11C10031 */  beq   $t6, $at, .L8008ED8C
/* B05E68 8008ECC8 3C028016 */   lui   $v0, %hi(gSaveContext) # $v0, 0x8016
/* B05E6C 8008ECCC 3C038012 */  lui   $v1, %hi(gEquipMasks) # $v1, 0x8012
/* B05E70 8008ECD0 246371A0 */  addiu $v1, %lo(gEquipMasks) # addiu $v1, $v1, 0x71a0
/* B05E74 8008ECD4 2442E660 */  addiu $v0, %lo(gSaveContext) # addiu $v0, $v0, -0x19a0
/* B05E78 8008ECD8 3C048012 */  lui   $a0, %hi(gEquipShifts) # $a0, 0x8012
/* B05E7C 8008ECDC 944F0070 */  lhu   $t7, 0x70($v0)
/* B05E80 8008ECE0 94780002 */  lhu   $t8, 2($v1)
/* B05E84 8008ECE4 248471F0 */  addiu $a0, %lo(gEquipShifts) # addiu $a0, $a0, 0x71f0
/* B05E88 8008ECE8 90880001 */  lbu   $t0, 1($a0)
/* B05E8C 8008ECEC 01F8C824 */  and   $t9, $t7, $t8
/* B05E90 8008ECF0 240500FF */  li    $a1, 255
/* B05E94 8008ECF4 01194807 */  srav  $t1, $t9, $t0
/* B05E98 8008ECF8 A0C9014E */  sb    $t1, 0x14e($a2)
/* B05E9C 8008ECFC 944A0070 */  lhu   $t2, 0x70($v0)
/* B05EA0 8008ED00 946B0004 */  lhu   $t3, 4($v1)
/* B05EA4 8008ED04 908D0002 */  lbu   $t5, 2($a0)
/* B05EA8 8008ED08 014B6024 */  and   $t4, $t2, $t3
/* B05EAC 8008ED0C 01AC7007 */  srav  $t6, $t4, $t5
/* B05EB0 8008ED10 25CFFFFF */  addiu $t7, $t6, -1
/* B05EB4 8008ED14 A0CF014C */  sb    $t7, 0x14c($a2)
/* B05EB8 8008ED18 94790006 */  lhu   $t9, 6($v1)
/* B05EBC 8008ED1C 94580070 */  lhu   $t8, 0x70($v0)
/* B05EC0 8008ED20 90890003 */  lbu   $t1, 3($a0)
/* B05EC4 8008ED24 00C02025 */  move  $a0, $a2
/* B05EC8 8008ED28 03194024 */  and   $t0, $t8, $t9
/* B05ECC 8008ED2C 01285007 */  srav  $t2, $t0, $t1
/* B05ED0 8008ED30 254BFFFF */  addiu $t3, $t2, -1
/* B05ED4 8008ED34 A0CB014F */  sb    $t3, 0x14f($a2)
/* B05ED8 8008ED38 904C13E2 */  lbu   $t4, 0x13e2($v0)
/* B05EDC 8008ED3C 54AC0004 */  bnel  $a1, $t4, .L8008ED50
/* B05EE0 8008ED40 90430068 */   lbu   $v1, 0x68($v0)
/* B05EE4 8008ED44 10000008 */  b     .L8008ED68
/* B05EE8 8008ED48 A0C5014D */   sb    $a1, 0x14d($a2)
/* B05EEC 8008ED4C 90430068 */  lbu   $v1, 0x68($v0)
.L8008ED50:
/* B05EF0 8008ED50 24010055 */  li    $at, 85
/* B05EF4 8008ED54 14610003 */  bne   $v1, $at, .L8008ED64
/* B05EF8 8008ED58 00601025 */   move  $v0, $v1
/* B05EFC 8008ED5C 10000001 */  b     .L8008ED64
/* B05F00 8008ED60 2402003D */   li    $v0, 61
.L8008ED64:
/* B05F04 8008ED64 A0C2014D */  sb    $v0, 0x14d($a2)
.L8008ED68:
/* B05F08 8008ED68 80C50151 */  lb    $a1, 0x151($a2)
/* B05F0C 8008ED6C 0C023A7E */  jal   func_8008E9F8
/* B05F10 8008ED70 AFA6001C */   sw    $a2, 0x1c($sp)
/* B05F14 8008ED74 8FA4001C */  lw    $a0, 0x1c($sp)
/* B05F18 8008ED78 0C023B01 */  jal   func_8008EC04
/* B05F1C 8008ED7C 00402825 */   move  $a1, $v0
/* B05F20 8008ED80 8FA5001C */  lw    $a1, 0x1c($sp)
/* B05F24 8008ED84 0C0239D4 */  jal   func_8008E750
/* B05F28 8008ED88 8FA40018 */   lw    $a0, 0x18($sp)
.L8008ED8C:
/* B05F2C 8008ED8C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B05F30 8008ED90 27BD0018 */  addiu $sp, $sp, 0x18
/* B05F34 8008ED94 03E00008 */  jr    $ra
/* B05F38 8008ED98 00000000 */   nop   

