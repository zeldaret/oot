glabel func_8008EB2C
/* B05CCC 8008EB2C 00057080 */  sll   $t6, $a1, 2
/* B05CD0 8008EB30 3C0F8012 */  lui   $t7, %hi(D_80125C98) # $t7, 0x8012
/* B05CD4 8008EB34 25EF5C98 */  addiu $t7, %lo(D_80125C98) # addiu $t7, $t7, 0x5c98
/* B05CD8 8008EB38 01C57021 */  addu  $t6, $t6, $a1
/* B05CDC 8008EB3C 01CF1021 */  addu  $v0, $t6, $t7
/* B05CE0 8008EB40 90580001 */  lbu   $t8, 1($v0)
/* B05CE4 8008EB44 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B05CE8 8008EB48 AFBF0014 */  sw    $ra, 0x14($sp)
/* B05CEC 8008EB4C A098015C */  sb    $t8, 0x15c($a0)
/* B05CF0 8008EB50 90590002 */  lbu   $t9, 2($v0)
/* B05CF4 8008EB54 3C038016 */  lui   $v1, %hi(gSaveContext) # $v1, 0x8016
/* B05CF8 8008EB58 3C068012 */  lui   $a2, %hi(D_80125F40) # $a2, 0x8012
/* B05CFC 8008EB5C A099015D */  sb    $t9, 0x15d($a0)
/* B05D00 8008EB60 90480003 */  lbu   $t0, 3($v0)
/* B05D04 8008EB64 24C65F40 */  addiu $a2, %lo(D_80125F40) # addiu $a2, $a2, 0x5f40
/* B05D08 8008EB68 2463E660 */  addiu $v1, %lo(gSaveContext) # addiu $v1, $v1, -0x19a0
/* B05D0C 8008EB6C A088015E */  sb    $t0, 0x15e($a0)
/* B05D10 8008EB70 904B0001 */  lbu   $t3, 1($v0)
/* B05D14 8008EB74 8C690004 */  lw    $t1, 4($v1)
/* B05D18 8008EB78 000B6080 */  sll   $t4, $t3, 2
/* B05D1C 8008EB7C 00CC6821 */  addu  $t5, $a2, $t4
/* B05D20 8008EB80 8DAE0000 */  lw    $t6, ($t5)
/* B05D24 8008EB84 00095080 */  sll   $t2, $t1, 2
/* B05D28 8008EB88 014E7821 */  addu  $t7, $t2, $t6
/* B05D2C 8008EB8C AC8F0164 */  sw    $t7, 0x164($a0)
/* B05D30 8008EB90 90480002 */  lbu   $t0, 2($v0)
/* B05D34 8008EB94 8C780004 */  lw    $t8, 4($v1)
/* B05D38 8008EB98 00084880 */  sll   $t1, $t0, 2
/* B05D3C 8008EB9C 00C95821 */  addu  $t3, $a2, $t1
/* B05D40 8008EBA0 8D6C0000 */  lw    $t4, ($t3)
/* B05D44 8008EBA4 0018C880 */  sll   $t9, $t8, 2
/* B05D48 8008EBA8 032C6821 */  addu  $t5, $t9, $t4
/* B05D4C 8008EBAC AC8D0160 */  sw    $t5, 0x160($a0)
/* B05D50 8008EBB0 904F0003 */  lbu   $t7, 3($v0)
/* B05D54 8008EBB4 8C6A0004 */  lw    $t2, 4($v1)
/* B05D58 8008EBB8 000FC080 */  sll   $t8, $t7, 2
/* B05D5C 8008EBBC 00D84021 */  addu  $t0, $a2, $t8
/* B05D60 8008EBC0 8D090000 */  lw    $t1, ($t0)
/* B05D64 8008EBC4 000A7080 */  sll   $t6, $t2, 2
/* B05D68 8008EBC8 01C95821 */  addu  $t3, $t6, $t1
/* B05D6C 8008EBCC AC8B0168 */  sw    $t3, 0x168($a0)
/* B05D70 8008EBD0 904D0004 */  lbu   $t5, 4($v0)
/* B05D74 8008EBD4 8C790004 */  lw    $t9, 4($v1)
/* B05D78 8008EBD8 000D5080 */  sll   $t2, $t5, 2
/* B05D7C 8008EBDC 00CA7821 */  addu  $t7, $a2, $t2
/* B05D80 8008EBE0 8DF80000 */  lw    $t8, ($t7)
/* B05D84 8008EBE4 00196080 */  sll   $t4, $t9, 2
/* B05D88 8008EBE8 01984021 */  addu  $t0, $t4, $t8
/* B05D8C 8008EBEC 0C023A90 */  jal   func_8008EA40
/* B05D90 8008EBF0 AC88016C */   sw    $t0, 0x16c($a0)
/* B05D94 8008EBF4 8FBF0014 */  lw    $ra, 0x14($sp)
/* B05D98 8008EBF8 27BD0018 */  addiu $sp, $sp, 0x18
/* B05D9C 8008EBFC 03E00008 */  jr    $ra
/* B05DA0 8008EC00 00000000 */   nop   

