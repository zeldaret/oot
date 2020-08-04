glabel func_800E3A44
/* B5ABE4 800E3A44 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B5ABE8 800E3A48 AFA40030 */  sw    $a0, 0x30($sp)
/* B5ABEC 800E3A4C AFA50034 */  sw    $a1, 0x34($sp)
/* B5ABF0 800E3A50 00A02025 */  move  $a0, $a1
/* B5ABF4 800E3A54 8FAE0044 */  lw    $t6, 0x44($sp)
/* B5ABF8 800E3A58 8FAF0048 */  lw    $t7, 0x48($sp)
/* B5ABFC 800E3A5C 8FB8004C */  lw    $t8, 0x4c($sp)
/* B5AC00 800E3A60 AFA60038 */  sw    $a2, 0x38($sp)
/* B5AC04 800E3A64 00C02825 */  move  $a1, $a2
/* B5AC08 800E3A68 AFBF0024 */  sw    $ra, 0x24($sp)
/* B5AC0C 800E3A6C AFA7003C */  sw    $a3, 0x3c($sp)
/* B5AC10 800E3A70 00E03025 */  move  $a2, $a3
/* B5AC14 800E3A74 8FA70040 */  lw    $a3, 0x40($sp)
/* B5AC18 800E3A78 AFAE0010 */  sw    $t6, 0x10($sp)
/* B5AC1C 800E3A7C AFAF0014 */  sw    $t7, 0x14($sp)
/* B5AC20 800E3A80 0C038EB2 */  jal   func_800E3AC8
/* B5AC24 800E3A84 AFB80018 */   sw    $t8, 0x18($sp)
/* B5AC28 800E3A88 14400003 */  bnez  $v0, .L800E3A98
/* B5AC2C 800E3A8C 00402825 */   move  $a1, $v0
/* B5AC30 800E3A90 10000009 */  b     .L800E3AB8
/* B5AC34 800E3A94 00001025 */   move  $v0, $zero
.L800E3A98:
/* B5AC38 800E3A98 3C048017 */  lui   $a0, %hi(D_80170E70) # $a0, 0x8017
/* B5AC3C 800E3A9C 24840E70 */  addiu $a0, %lo(D_80170E70) # addiu $a0, $a0, 0xe70
/* B5AC40 800E3AA0 00003025 */  move  $a2, $zero
/* B5AC44 800E3AA4 0C000C18 */  jal   osSendMesg
/* B5AC48 800E3AA8 AFA5002C */   sw    $a1, 0x2c($sp)
/* B5AC4C 800E3AAC 8FA2002C */  lw    $v0, 0x2c($sp)
/* B5AC50 800E3AB0 8FB90030 */  lw    $t9, 0x30($sp)
/* B5AC54 800E3AB4 AC590018 */  sw    $t9, 0x18($v0)
.L800E3AB8:
/* B5AC58 800E3AB8 8FBF0024 */  lw    $ra, 0x24($sp)
/* B5AC5C 800E3ABC 27BD0030 */  addiu $sp, $sp, 0x30
/* B5AC60 800E3AC0 03E00008 */  jr    $ra
/* B5AC64 800E3AC4 00000000 */   nop

