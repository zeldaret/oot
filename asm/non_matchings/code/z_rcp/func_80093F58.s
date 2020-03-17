glabel func_80093F58
/* B0B0F8 80093F58 00801025 */  move  $v0, $a0
/* B0B0FC 80093F5C 3C0F8012 */  lui   $t7, %hi(D_801268E0) # $t7, 0x8012
/* B0B100 80093F60 25EF68E0 */  addiu $t7, %lo(D_801268E0) # addiu $t7, $t7, 0x68e0
/* B0B104 80093F64 3C0EDE00 */  lui   $t6, 0xde00
/* B0B108 80093F68 AC4E0000 */  sw    $t6, ($v0)
/* B0B10C 80093F6C AC4F0004 */  sw    $t7, 4($v0)
/* B0B110 80093F70 24840008 */  addiu $a0, $a0, 8
/* B0B114 80093F74 03E00008 */  jr    $ra
/* B0B118 80093F78 00801025 */   move  $v0, $a0

