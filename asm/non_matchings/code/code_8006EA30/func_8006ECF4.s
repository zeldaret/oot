glabel func_8006ECF4
/* AE5E94 8006ECF4 3C014320 */  li    $at, 0x43200000 # 0.000000
/* AE5E98 8006ECF8 44810000 */  mtc1  $at, $f0
/* AE5E9C 8006ECFC 3C010001 */  li    $at, 0x00010000 # 0.000000
/* AE5EA0 8006ED00 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AE5EA4 8006ED04 00811021 */  addu  $v0, $a0, $at
/* AE5EA8 8006ED08 AFBF0014 */  sw    $ra, 0x14($sp)
/* AE5EAC 8006ED0C 3C014280 */  li    $at, 0x42800000 # 0.000000
/* AE5EB0 8006ED10 44812000 */  mtc1  $at, $f4
/* AE5EB4 8006ED14 3C01446A */  li    $at, 0x446A0000 # 0.000000
/* AE5EB8 8006ED18 44813000 */  mtc1  $at, $f6
/* AE5EBC 8006ED1C 44801000 */  mtc1  $zero, $f2
/* AE5EC0 8006ED20 3C01C39D */  li    $at, 0xC39D0000 # 0.000000
/* AE5EC4 8006ED24 44814000 */  mtc1  $at, $f8
/* AE5EC8 8006ED28 3C078016 */  lui   $a3, %hi(gGameInfo) # $a3, 0x8016
/* AE5ECC 8006ED2C 24E7FA90 */  addiu $a3, %lo(gGameInfo) # addiu $a3, $a3, -0x570
/* AE5ED0 8006ED30 A4400934 */  sh    $zero, 0x934($v0)
/* AE5ED4 8006ED34 A4400936 */  sh    $zero, 0x936($v0)
/* AE5ED8 8006ED38 A4400968 */  sh    $zero, 0x968($v0)
/* AE5EDC 8006ED3C A440094A */  sh    $zero, 0x94a($v0)
/* AE5EE0 8006ED40 A4400944 */  sh    $zero, 0x944($v0)
/* AE5EE4 8006ED44 A4400946 */  sh    $zero, 0x946($v0)
/* AE5EE8 8006ED48 A4400948 */  sh    $zero, 0x948($v0)
/* AE5EEC 8006ED4C A4400978 */  sh    $zero, 0x978($v0)
/* AE5EF0 8006ED50 E4400954 */  swc1  $f0, 0x954($v0)
/* AE5EF4 8006ED54 E4400958 */  swc1  $f0, 0x958($v0)
/* AE5EF8 8006ED58 E440095C */  swc1  $f0, 0x95c($v0)
/* AE5EFC 8006ED5C E4400960 */  swc1  $f0, 0x960($v0)
/* AE5F00 8006ED60 E4440940 */  swc1  $f4, 0x940($v0)
/* AE5F04 8006ED64 E4460950 */  swc1  $f6, 0x950($v0)
/* AE5F08 8006ED68 E442093C */  swc1  $f2, 0x93c($v0)
/* AE5F0C 8006ED6C E4420938 */  swc1  $f2, 0x938($v0)
/* AE5F10 8006ED70 E4480964 */  swc1  $f8, 0x964($v0)
/* AE5F14 8006ED74 8CEE0000 */  lw    $t6, ($a3)
/* AE5F18 8006ED78 24080001 */  li    $t0, 1
/* AE5F1C 8006ED7C 240903E7 */  li    $t1, 999
/* AE5F20 8006ED80 85CF0F50 */  lh    $t7, 0xf50($t6)
/* AE5F24 8006ED84 2419000A */  li    $t9, 10
/* AE5F28 8006ED88 A440097C */  sh    $zero, 0x97c($v0)
/* AE5F2C 8006ED8C 25F80003 */  addiu $t8, $t7, 3
/* AE5F30 8006ED90 A458097A */  sh    $t8, 0x97a($v0)
/* AE5F34 8006ED94 A448097E */  sh    $t0, 0x97e($v0)
/* AE5F38 8006ED98 A4590980 */  sh    $t9, 0x980($v0)
/* AE5F3C 8006ED9C A4400982 */  sh    $zero, 0x982($v0)
/* AE5F40 8006EDA0 A440098C */  sh    $zero, 0x98c($v0)
/* AE5F44 8006EDA4 A4400984 */  sh    $zero, 0x984($v0)
/* AE5F48 8006EDA8 A440098E */  sh    $zero, 0x98e($v0)
/* AE5F4C 8006EDAC A4400986 */  sh    $zero, 0x986($v0)
/* AE5F50 8006EDB0 A4400990 */  sh    $zero, 0x990($v0)
/* AE5F54 8006EDB4 A4480988 */  sh    $t0, 0x988($v0)
/* AE5F58 8006EDB8 A4400992 */  sh    $zero, 0x992($v0)
/* AE5F5C 8006EDBC A449099E */  sh    $t1, 0x99e($v0)
/* AE5F60 8006EDC0 8CEA0000 */  lw    $t2, ($a3)
/* AE5F64 8006EDC4 240D003B */  li    $t5, 59
/* AE5F68 8006EDC8 8459097E */  lh    $t9, 0x97e($v0)
/* AE5F6C 8006EDCC 854B0F50 */  lh    $t3, 0xf50($t2)
/* AE5F70 8006EDD0 A44909A2 */  sh    $t1, 0x9a2($v0)
/* AE5F74 8006EDD4 A44D09A4 */  sh    $t5, 0x9a4($v0)
/* AE5F78 8006EDD8 256C0003 */  addiu $t4, $t3, 3
/* AE5F7C 8006EDDC A44C09A0 */  sh    $t4, 0x9a0($v0)
/* AE5F80 8006EDE0 A44009A6 */  sh    $zero, 0x9a6($v0)
/* AE5F84 8006EDE4 8CEE0000 */  lw    $t6, ($a3)
/* AE5F88 8006EDE8 240AFFD8 */  li    $t2, -40
/* AE5F8C 8006EDEC 240B0004 */  li    $t3, 4
/* AE5F90 8006EDF0 85CF0F50 */  lh    $t7, 0xf50($t6)
/* AE5F94 8006EDF4 240CFFFF */  li    $t4, -1
/* AE5F98 8006EDF8 3C010001 */  lui   $at, (0x00010760 >> 16) # lui $at, 1
/* AE5F9C 8006EDFC 25F80003 */  addiu $t8, $t7, 3
/* AE5FA0 8006EE00 00803025 */  move  $a2, $a0
/* AE5FA4 8006EE04 A45809A8 */  sh    $t8, 0x9a8($v0)
/* AE5FA8 8006EE08 A44009AA */  sh    $zero, 0x9aa($v0)
/* AE5FAC 8006EE0C A44A09BA */  sh    $t2, 0x9ba($v0)
/* AE5FB0 8006EE10 A44009BC */  sh    $zero, 0x9bc($v0)
/* AE5FB4 8006EE14 A44009BE */  sh    $zero, 0x9be($v0)
/* AE5FB8 8006EE18 A44B09C0 */  sh    $t3, 0x9c0($v0)
/* AE5FBC 8006EE1C A44C09C4 */  sh    $t4, 0x9c4($v0)
/* AE5FC0 8006EE20 A4400998 */  sh    $zero, 0x998($v0)
/* AE5FC4 8006EE24 34210760 */  ori   $at, (0x00010760 & 0xFFFF) # ori $at, $at, 0x760
/* AE5FC8 8006EE28 A45909AC */  sh    $t9, 0x9ac($v0)
/* AE5FCC 8006EE2C 8CC50000 */  lw    $a1, ($a2)
/* AE5FD0 8006EE30 0C02A89E */  jal   func_800AA278
/* AE5FD4 8006EE34 00812021 */   addu  $a0, $a0, $at
/* AE5FD8 8006EE38 8FBF0014 */  lw    $ra, 0x14($sp)
/* AE5FDC 8006EE3C 27BD0018 */  addiu $sp, $sp, 0x18
/* AE5FE0 8006EE40 03E00008 */  jr    $ra
/* AE5FE4 8006EE44 00000000 */   nop   

