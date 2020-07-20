glabel func_800FADF8
/* B71F98 800FADF8 3C078017 */  lui   $a3, %hi(D_8016E750) # $a3, 0x8017
/* B71F9C 800FADFC 3C068017 */  lui   $a2, %hi(D_8016E348) # $a2, 0x8017
/* B71FA0 800FAE00 24C6E348 */  addiu $a2, %lo(D_8016E348) # addiu $a2, $a2, -0x1cb8
/* B71FA4 800FAE04 24E7E750 */  addiu $a3, %lo(D_8016E750) # addiu $a3, $a3, -0x18b0
/* B71FA8 800FAE08 00001025 */  move  $v0, $zero
/* B71FAC 800FAE0C 240B0001 */  li    $t3, 1
/* B71FB0 800FAE10 240A007F */  li    $t2, 127
/* B71FB4 800FAE14 3409FFFF */  li    $t1, 65535
/* B71FB8 800FAE18 24080264 */  li    $t0, 612
.L800FAE1C:
/* B71FBC 800FAE1C 00480019 */  multu $v0, $t0
/* B71FC0 800FAE20 00C27021 */  addu  $t6, $a2, $v0
/* B71FC4 800FAE24 A1C00000 */  sb    $zero, ($t6)
/* B71FC8 800FAE28 0002C080 */  sll   $t8, $v0, 2
/* B71FCC 800FAE2C 0302C021 */  addu  $t8, $t8, $v0
/* B71FD0 800FAE30 0018C080 */  sll   $t8, $t8, 2
/* B71FD4 800FAE34 0302C023 */  subu  $t8, $t8, $v0
/* B71FD8 800FAE38 0018C0C0 */  sll   $t8, $t8, 3
/* B71FDC 800FAE3C 0302C021 */  addu  $t8, $t8, $v0
/* B71FE0 800FAE40 0018C080 */  sll   $t8, $t8, 2
/* B71FE4 800FAE44 00007812 */  mflo  $t7
/* B71FE8 800FAE48 00EF1821 */  addu  $v1, $a3, $t7
/* B71FEC 800FAE4C A4690254 */  sh    $t1, 0x254($v1)
/* B71FF0 800FAE50 A4690256 */  sh    $t1, 0x256($v1)
/* B71FF4 800FAE54 A4600028 */  sh    $zero, 0x28($v1)
/* B71FF8 800FAE58 A4600018 */  sh    $zero, 0x18($v1)
/* B71FFC 800FAE5C AC600014 */  sw    $zero, 0x14($v1)
/* B72000 800FAE60 A4600258 */  sh    $zero, 0x258($v1)
/* B72004 800FAE64 A060004D */  sb    $zero, 0x4d($v1)
/* B72008 800FAE68 A060004E */  sb    $zero, 0x4e($v1)
/* B7200C 800FAE6C A4600250 */  sh    $zero, 0x250($v1)
/* B72010 800FAE70 A4600252 */  sh    $zero, 0x252($v1)
/* B72014 800FAE74 00F82821 */  addu  $a1, $a3, $t8
/* B72018 800FAE78 00002025 */  move  $a0, $zero
.L800FAE7C:
/* B7201C 800FAE7C 00A4C821 */  addu  $t9, $a1, $a0
/* B72020 800FAE80 24840001 */  addiu $a0, $a0, 1
/* B72024 800FAE84 308400FF */  andi  $a0, $a0, 0xff
/* B72028 800FAE88 28810004 */  slti  $at, $a0, 4
/* B7202C 800FAE8C 1420FFFB */  bnez  $at, .L800FAE7C
/* B72030 800FAE90 A32A000E */   sb    $t2, 0xe($t9)
/* B72034 800FAE94 24420001 */  addiu $v0, $v0, 1
/* B72038 800FAE98 304200FF */  andi  $v0, $v0, 0xff
/* B7203C 800FAE9C 28410004 */  slti  $at, $v0, 4
/* B72040 800FAEA0 A06B0012 */  sb    $t3, 0x12($v1)
/* B72044 800FAEA4 1420FFDD */  bnez  $at, .L800FAE1C
/* B72048 800FAEA8 A06B0013 */   sb    $t3, 0x13($v1)
/* B7204C 800FAEAC 03E00008 */  jr    $ra
/* B72050 800FAEB0 00000000 */   nop   

