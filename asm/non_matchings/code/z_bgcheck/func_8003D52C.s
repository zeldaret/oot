glabel func_8003D52C
/* AB46CC 8003D52C 27BDFFC8 */  addiu $sp, $sp, -0x38
/* AB46D0 8003D530 AFA70044 */  sw    $a3, 0x44($sp)
/* AB46D4 8003D534 8FAE0044 */  lw    $t6, 0x44($sp)
/* AB46D8 8003D538 C7A40048 */  lwc1  $f4, 0x48($sp)
/* AB46DC 8003D53C 8FAF004C */  lw    $t7, 0x4c($sp)
/* AB46E0 8003D540 8FB80050 */  lw    $t8, 0x50($sp)
/* AB46E4 8003D544 8FB90054 */  lw    $t9, 0x54($sp)
/* AB46E8 8003D548 C7A60058 */  lwc1  $f6, 0x58($sp)
/* AB46EC 8003D54C AFA60040 */  sw    $a2, 0x40($sp)
/* AB46F0 8003D550 00A03025 */  move  $a2, $a1
/* AB46F4 8003D554 AFBF0034 */  sw    $ra, 0x34($sp)
/* AB46F8 8003D558 AFA5003C */  sw    $a1, 0x3c($sp)
/* AB46FC 8003D55C 8FA70040 */  lw    $a3, 0x40($sp)
/* AB4700 8003D560 24050002 */  li    $a1, 2
/* AB4704 8003D564 AFA00028 */  sw    $zero, 0x28($sp)
/* AB4708 8003D568 AFAE0010 */  sw    $t6, 0x10($sp)
/* AB470C 8003D56C E7A40014 */  swc1  $f4, 0x14($sp)
/* AB4710 8003D570 AFAF0018 */  sw    $t7, 0x18($sp)
/* AB4714 8003D574 AFB8001C */  sw    $t8, 0x1c($sp)
/* AB4718 8003D578 AFB90020 */  sw    $t9, 0x20($sp)
/* AB471C 8003D57C 0C00F375 */  jal   func_8003CDD4
/* AB4720 8003D580 E7A60024 */   swc1  $f6, 0x24($sp)
/* AB4724 8003D584 8FBF0034 */  lw    $ra, 0x34($sp)
/* AB4728 8003D588 27BD0038 */  addiu $sp, $sp, 0x38
/* AB472C 8003D58C 03E00008 */  jr    $ra
/* AB4730 8003D590 00000000 */   nop   

