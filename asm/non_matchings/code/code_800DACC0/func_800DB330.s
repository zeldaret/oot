glabel func_800DB330
/* B524D0 800DB330 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B524D4 800DB334 AFBF001C */  sw    $ra, 0x1c($sp)
/* B524D8 800DB338 AFA5002C */  sw    $a1, 0x2c($sp)
/* B524DC 800DB33C AFA60030 */  sw    $a2, 0x30($sp)
/* B524E0 800DB340 90AF0003 */  lbu   $t7, 3($a1)
/* B524E4 800DB344 87A80032 */  lh    $t0, 0x32($sp)
/* B524E8 800DB348 00A07025 */  move  $t6, $a1
/* B524EC 800DB34C 000FC0C0 */  sll   $t8, $t7, 3
/* B524F0 800DB350 030FC021 */  addu  $t8, $t8, $t7
/* B524F4 800DB354 0018C080 */  sll   $t8, $t8, 2
/* B524F8 800DB358 030FC023 */  subu  $t8, $t8, $t7
/* B524FC 800DB35C 000848C0 */  sll   $t1, $t0, 3
/* B52500 800DB360 0018C080 */  sll   $t8, $t8, 2
/* B52504 800DB364 01284823 */  subu  $t1, $t1, $t0
/* B52508 800DB368 00094880 */  sll   $t1, $t1, 2
/* B5250C 800DB36C 00B8C821 */  addu  $t9, $a1, $t8
/* B52510 800DB370 03291821 */  addu  $v1, $t9, $t1
/* B52514 800DB374 24630040 */  addiu $v1, $v1, 0x40
/* B52518 800DB378 84670010 */  lh    $a3, 0x10($v1)
/* B5251C 800DB37C 9466000E */  lhu   $a2, 0xe($v1)
/* B52520 800DB380 AFA30024 */  sw    $v1, 0x24($sp)
/* B52524 800DB384 AFAE0010 */  sw    $t6, 0x10($sp)
/* B52528 800DB388 0C037002 */  jal   func_800DC008
/* B5252C 800DB38C 240503E0 */   li    $a1, 992
/* B52530 800DB390 8FA30024 */  lw    $v1, 0x24($sp)
/* B52534 800DB394 00402025 */  move  $a0, $v0
/* B52538 800DB398 8FAA002C */  lw    $t2, 0x2c($sp)
/* B5253C 800DB39C 84670012 */  lh    $a3, 0x12($v1)
/* B52540 800DB3A0 50E00009 */  beql  $a3, $zero, .L800DB3C8
/* B52544 800DB3A4 8FBF001C */   lw    $ra, 0x1c($sp)
/* B52548 800DB3A8 84650010 */  lh    $a1, 0x10($v1)
/* B5254C 800DB3AC AFAA0010 */  sw    $t2, 0x10($sp)
/* B52550 800DB3B0 00003025 */  move  $a2, $zero
/* B52554 800DB3B4 24A503E0 */  addiu $a1, $a1, 0x3e0
/* B52558 800DB3B8 0C037002 */  jal   func_800DC008
/* B5255C 800DB3BC 30A5FFFF */   andi  $a1, $a1, 0xffff
/* B52560 800DB3C0 00402025 */  move  $a0, $v0
/* B52564 800DB3C4 8FBF001C */  lw    $ra, 0x1c($sp)
.L800DB3C8:
/* B52568 800DB3C8 27BD0028 */  addiu $sp, $sp, 0x28
/* B5256C 800DB3CC 00801025 */  move  $v0, $a0
/* B52570 800DB3D0 03E00008 */  jr    $ra
/* B52574 800DB3D4 00000000 */   nop

