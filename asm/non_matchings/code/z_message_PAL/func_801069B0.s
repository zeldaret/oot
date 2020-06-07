glabel func_801069B0
/* B7DB50 801069B0 3C058016 */  lui   $a1, %hi(gGameInfo) # $a1, 0x8016
/* B7DB54 801069B4 24A5FA90 */  addiu $a1, %lo(gGameInfo) # addiu $a1, $a1, -0x570
/* B7DB58 801069B8 8CAF0000 */  lw    $t7, ($a1)
/* B7DB5C 801069BC 240E00BD */  li    $t6, 189
/* B7DB60 801069C0 241800B8 */  li    $t8, 184
/* B7DB64 801069C4 A5EE0F6E */  sh    $t6, 0xf6e($t7)
/* B7DB68 801069C8 8CB90000 */  lw    $t9, ($a1)
/* B7DB6C 801069CC 240800B3 */  li    $t0, 179
/* B7DB70 801069D0 240A00AE */  li    $t2, 174
/* B7DB74 801069D4 A7380F70 */  sh    $t8, 0xf70($t9)
/* B7DB78 801069D8 8CA90000 */  lw    $t1, ($a1)
/* B7DB7C 801069DC 240C00A9 */  li    $t4, 169
/* B7DB80 801069E0 3C038015 */  lui   $v1, %hi(D_80153958) # $v1, 0x8015
/* B7DB84 801069E4 A5280F72 */  sh    $t0, 0xf72($t1)
/* B7DB88 801069E8 8CAB0000 */  lw    $t3, ($a1)
/* B7DB8C 801069EC 240E00FF */  li    $t6, 255
/* B7DB90 801069F0 3C018015 */  lui   $at, %hi(D_8015394C) # $at, 0x8015
/* B7DB94 801069F4 A56A0F74 */  sh    $t2, 0xf74($t3)
/* B7DB98 801069F8 8CAD0000 */  lw    $t5, ($a1)
/* B7DB9C 801069FC 24633958 */  addiu $v1, %lo(D_80153958) # addiu $v1, $v1, 0x3958
/* B7DBA0 80106A00 240F0050 */  li    $t7, 80
/* B7DBA4 80106A04 A5AC0F76 */  sh    $t4, 0xf76($t5)
/* B7DBA8 80106A08 A02E394C */  sb    $t6, %lo(D_8015394C)($at)
/* B7DBAC 80106A0C A4600010 */  sh    $zero, 0x10($v1)
/* B7DBB0 80106A10 84620010 */  lh    $v0, 0x10($v1)
/* B7DBB4 80106A14 3C018017 */  lui   $at, %hi(D_801759A8) # $at, 0x8017
/* B7DBB8 80106A18 240600FF */  li    $a2, 255
/* B7DBBC 80106A1C A462000E */  sh    $v0, 0xe($v1)
/* B7DBC0 80106A20 A462000C */  sh    $v0, 0xc($v1)
/* B7DBC4 80106A24 A462000A */  sh    $v0, 0xa($v1)
/* B7DBC8 80106A28 A4620008 */  sh    $v0, 8($v1)
/* B7DBCC 80106A2C A4620006 */  sh    $v0, 6($v1)
/* B7DBD0 80106A30 A4620004 */  sh    $v0, 4($v1)
/* B7DBD4 80106A34 A4620002 */  sh    $v0, 2($v1)
/* B7DBD8 80106A38 A4620000 */  sh    $v0, ($v1)
/* B7DBDC 80106A3C A42F59A8 */  sh    $t7, %lo(D_801759A8)($at)
/* B7DBE0 80106A40 3C018017 */  lui   $at, %hi(D_801759AC) # $at, 0x8017
/* B7DBE4 80106A44 A42659AC */  sh    $a2, %lo(D_801759AC)($at)
/* B7DBE8 80106A48 3C018017 */  lui   $at, %hi(D_801759AA) # $at, 0x8017
/* B7DBEC 80106A4C 24180096 */  li    $t8, 150
/* B7DBF0 80106A50 A43859AA */  sh    $t8, %lo(D_801759AA)($at)
/* B7DBF4 80106A54 2404000A */  li    $a0, 10
/* B7DBF8 80106A58 3C018017 */  lui   $at, %hi(D_801759AE) # $at, 0x8017
/* B7DBFC 80106A5C A42459AE */  sh    $a0, %lo(D_801759AE)($at)
/* B7DC00 80106A60 3C018017 */  lui   $at, %hi(D_801759B2) # $at, 0x8017
/* B7DC04 80106A64 A42459B2 */  sh    $a0, %lo(D_801759B2)($at)
/* B7DC08 80106A68 3C018017 */  lui   $at, %hi(D_801759B0) # $at, 0x8017
/* B7DC0C 80106A6C A42459B0 */  sh    $a0, %lo(D_801759B0)($at)
/* B7DC10 80106A70 3C018017 */  lui   $at, %hi(D_801759B4) # $at, 0x8017
/* B7DC14 80106A74 A42659B4 */  sh    $a2, %lo(D_801759B4)($at)
/* B7DC18 80106A78 3C018017 */  lui   $at, %hi(D_801759B8) # $at, 0x8017
/* B7DC1C 80106A7C A42659B8 */  sh    $a2, %lo(D_801759B8)($at)
/* B7DC20 80106A80 3C018017 */  lui   $at, %hi(D_801759B6) # $at, 0x8017
/* B7DC24 80106A84 24190032 */  li    $t9, 50
/* B7DC28 80106A88 A43959B6 */  sh    $t9, %lo(D_801759B6)($at)
/* B7DC2C 80106A8C 3C018017 */  lui   $at, %hi(D_801759BA) # $at, 0x8017
/* B7DC30 80106A90 A42459BA */  sh    $a0, %lo(D_801759BA)($at)
/* B7DC34 80106A94 3C018017 */  lui   $at, %hi(D_801759BE) # $at, 0x8017
/* B7DC38 80106A98 A42459BE */  sh    $a0, %lo(D_801759BE)($at)
/* B7DC3C 80106A9C 3C018017 */  lui   $at, %hi(D_801759BC)
/* B7DC40 80106AA0 03E00008 */  jr    $ra
/* B7DC44 80106AA4 A42459BC */   sh    $a0, %lo(D_801759BC)($at)

