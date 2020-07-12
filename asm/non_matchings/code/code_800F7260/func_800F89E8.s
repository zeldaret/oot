glabel func_800F89E8
/* B6FB88 800F89E8 27BDFFA8 */  addiu $sp, $sp, -0x58
/* B6FB8C 800F89EC AFB10018 */  sw    $s1, 0x18($sp)
/* B6FB90 800F89F0 AFB00014 */  sw    $s0, 0x14($sp)
/* B6FB94 800F89F4 00808825 */  move  $s1, $a0
/* B6FB98 800F89F8 AFBF001C */  sw    $ra, 0x1c($sp)
/* B6FB9C 800F89FC 00008025 */  move  $s0, $zero
/* B6FBA0 800F8A00 320400FF */  andi  $a0, $s0, 0xff
.L800F8A04:
/* B6FBA4 800F8A04 0C03E221 */  jal   func_800F8884
/* B6FBA8 800F8A08 02202825 */   move  $a1, $s1
/* B6FBAC 800F8A0C 26100001 */  addiu $s0, $s0, 1
/* B6FBB0 800F8A10 321000FF */  andi  $s0, $s0, 0xff
/* B6FBB4 800F8A14 2A010007 */  slti  $at, $s0, 7
/* B6FBB8 800F8A18 5420FFFA */  bnezl $at, .L800F8A04
/* B6FBBC 800F8A1C 320400FF */   andi  $a0, $s0, 0xff
/* B6FBC0 800F8A20 AFB10024 */  sw    $s1, 0x24($sp)
/* B6FBC4 800F8A24 24040002 */  li    $a0, 2
/* B6FBC8 800F8A28 0C03DD38 */  jal   func_800F74E0
/* B6FBCC 800F8A2C 27A50024 */   addiu $a1, $sp, 0x24
/* B6FBD0 800F8A30 8FBF001C */  lw    $ra, 0x1c($sp)
/* B6FBD4 800F8A34 8FB00014 */  lw    $s0, 0x14($sp)
/* B6FBD8 800F8A38 8FB10018 */  lw    $s1, 0x18($sp)
/* B6FBDC 800F8A3C 03E00008 */  jr    $ra
/* B6FBE0 800F8A40 27BD0058 */   addiu $sp, $sp, 0x58

