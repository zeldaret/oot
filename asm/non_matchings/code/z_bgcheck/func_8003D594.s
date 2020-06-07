glabel func_8003D594
/* AB4734 8003D594 27BDFFC8 */  addiu $sp, $sp, -0x38
/* AB4738 8003D598 AFA70044 */  sw    $a3, 0x44($sp)
/* AB473C 8003D59C 8FAE0044 */  lw    $t6, 0x44($sp)
/* AB4740 8003D5A0 C7A40048 */  lwc1  $f4, 0x48($sp)
/* AB4744 8003D5A4 8FAF004C */  lw    $t7, 0x4c($sp)
/* AB4748 8003D5A8 8FB80050 */  lw    $t8, 0x50($sp)
/* AB474C 8003D5AC 8FB90054 */  lw    $t9, 0x54($sp)
/* AB4750 8003D5B0 C7A60058 */  lwc1  $f6, 0x58($sp)
/* AB4754 8003D5B4 AFA60040 */  sw    $a2, 0x40($sp)
/* AB4758 8003D5B8 00A03025 */  move  $a2, $a1
/* AB475C 8003D5BC AFBF0034 */  sw    $ra, 0x34($sp)
/* AB4760 8003D5C0 AFA5003C */  sw    $a1, 0x3c($sp)
/* AB4764 8003D5C4 24080001 */  li    $t0, 1
/* AB4768 8003D5C8 8FA70040 */  lw    $a3, 0x40($sp)
/* AB476C 8003D5CC AFA80028 */  sw    $t0, 0x28($sp)
/* AB4770 8003D5D0 24050002 */  li    $a1, 2
/* AB4774 8003D5D4 AFAE0010 */  sw    $t6, 0x10($sp)
/* AB4778 8003D5D8 E7A40014 */  swc1  $f4, 0x14($sp)
/* AB477C 8003D5DC AFAF0018 */  sw    $t7, 0x18($sp)
/* AB4780 8003D5E0 AFB8001C */  sw    $t8, 0x1c($sp)
/* AB4784 8003D5E4 AFB90020 */  sw    $t9, 0x20($sp)
/* AB4788 8003D5E8 0C00F375 */  jal   func_8003CDD4
/* AB478C 8003D5EC E7A60024 */   swc1  $f6, 0x24($sp)
/* AB4790 8003D5F0 8FBF0034 */  lw    $ra, 0x34($sp)
/* AB4794 8003D5F4 27BD0038 */  addiu $sp, $sp, 0x38
/* AB4798 8003D5F8 03E00008 */  jr    $ra
/* AB479C 8003D5FC 00000000 */   nop   

