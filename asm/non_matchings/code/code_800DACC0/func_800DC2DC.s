glabel func_800DC2DC
/* B5347C 800DC2DC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B53480 800DC2E0 AFBF001C */  sw    $ra, 0x1c($sp)
/* B53484 800DC2E4 AFA5002C */  sw    $a1, 0x2c($sp)
/* B53488 800DC2E8 AFA60030 */  sw    $a2, 0x30($sp)
/* B5348C 800DC2EC 90AF0003 */  lbu   $t7, 3($a1)
/* B53490 800DC2F0 87A80032 */  lh    $t0, 0x32($sp)
/* B53494 800DC2F4 00A07025 */  move  $t6, $a1
/* B53498 800DC2F8 000FC0C0 */  sll   $t8, $t7, 3
/* B5349C 800DC2FC 030FC021 */  addu  $t8, $t8, $t7
/* B534A0 800DC300 0018C080 */  sll   $t8, $t8, 2
/* B534A4 800DC304 030FC023 */  subu  $t8, $t8, $t7
/* B534A8 800DC308 000848C0 */  sll   $t1, $t0, 3
/* B534AC 800DC30C 0018C080 */  sll   $t8, $t8, 2
/* B534B0 800DC310 01284823 */  subu  $t1, $t1, $t0
/* B534B4 800DC314 00094880 */  sll   $t1, $t1, 2
/* B534B8 800DC318 00B8C821 */  addu  $t9, $a1, $t8
/* B534BC 800DC31C 03291821 */  addu  $v1, $t9, $t1
/* B534C0 800DC320 24630158 */  addiu $v1, $v1, 0x158
/* B534C4 800DC324 84670010 */  lh    $a3, 0x10($v1)
/* B534C8 800DC328 9466000E */  lhu   $a2, 0xe($v1)
/* B534CC 800DC32C AFA30024 */  sw    $v1, 0x24($sp)
/* B534D0 800DC330 AFAE0010 */  sw    $t6, 0x10($sp)
/* B534D4 800DC334 0C03701D */  jal   func_800DC074
/* B534D8 800DC338 24050C80 */   li    $a1, 3200
/* B534DC 800DC33C 8FA30024 */  lw    $v1, 0x24($sp)
/* B534E0 800DC340 00402025 */  move  $a0, $v0
/* B534E4 800DC344 8FAA002C */  lw    $t2, 0x2c($sp)
/* B534E8 800DC348 84670012 */  lh    $a3, 0x12($v1)
/* B534EC 800DC34C 50E00009 */  beql  $a3, $zero, .L800DC374
/* B534F0 800DC350 8FBF001C */   lw    $ra, 0x1c($sp)
/* B534F4 800DC354 84650010 */  lh    $a1, 0x10($v1)
/* B534F8 800DC358 AFAA0010 */  sw    $t2, 0x10($sp)
/* B534FC 800DC35C 00003025 */  move  $a2, $zero
/* B53500 800DC360 24A50C80 */  addiu $a1, $a1, 0xc80
/* B53504 800DC364 0C03701D */  jal   func_800DC074
/* B53508 800DC368 30A5FFFF */   andi  $a1, $a1, 0xffff
/* B5350C 800DC36C 00402025 */  move  $a0, $v0
/* B53510 800DC370 8FBF001C */  lw    $ra, 0x1c($sp)
.L800DC374:
/* B53514 800DC374 27BD0028 */  addiu $sp, $sp, 0x28
/* B53518 800DC378 00801025 */  move  $v0, $a0
/* B5351C 800DC37C 03E00008 */  jr    $ra
/* B53520 800DC380 00000000 */   nop

