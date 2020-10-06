glabel func_800E5A8C
/* B5CC2C 800E5A8C 3C068017 */  lui   $a2, %hi(gAudioContext) # $a2, 0x8017
/* B5CC30 800E5A90 24C6F180 */  addiu $a2, %lo(gAudioContext) # addiu $a2, $a2, -0xe80
/* B5CC34 800E5A94 90CF5BD8 */  lbu   $t7, 0x5bd8($a2)
/* B5CC38 800E5A98 000FC0C0 */  sll   $t8, $t7, 3
/* B5CC3C 800E5A9C 00D81021 */  addu  $v0, $a2, $t8
/* B5CC40 800E5AA0 AC445C50 */  sw    $a0, 0x5c50($v0)
/* B5CC44 800E5AA4 8CB90000 */  lw    $t9, ($a1)
/* B5CC48 800E5AA8 24425C50 */  addiu $v0, $v0, 0x5c50
/* B5CC4C 800E5AAC AC590004 */  sw    $t9, 4($v0)
/* B5CC50 800E5AB0 90C85BD8 */  lbu   $t0, 0x5bd8($a2)
/* B5CC54 800E5AB4 90CA5BD9 */  lbu   $t2, 0x5bd9($a2)
/* B5CC58 800E5AB8 25090001 */  addiu $t1, $t0, 1
/* B5CC5C 800E5ABC 312300FF */  andi  $v1, $t1, 0xff
/* B5CC60 800E5AC0 15430003 */  bne   $t2, $v1, .L800E5AD0
/* B5CC64 800E5AC4 A0C95BD8 */   sb    $t1, 0x5bd8($a2)
/* B5CC68 800E5AC8 246BFFFF */  addiu $t3, $v1, -1
/* B5CC6C 800E5ACC A0CB5BD8 */  sb    $t3, 0x5bd8($a2)
.L800E5AD0:
/* B5CC70 800E5AD0 03E00008 */  jr    $ra
/* B5CC74 800E5AD4 00000000 */   nop

