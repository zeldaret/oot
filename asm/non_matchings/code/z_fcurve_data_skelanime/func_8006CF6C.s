glabel func_8006CF6C
/* AE410C 8006CF6C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AE4110 8006CF70 AFBF0024 */  sw    $ra, 0x24($sp)
/* AE4114 8006CF74 AFA40028 */  sw    $a0, 0x28($sp)
/* AE4118 8006CF78 8CCE001C */  lw    $t6, 0x1c($a2)
/* AE411C 8006CF7C 00A02025 */  move  $a0, $a1
/* AE4120 8006CF80 00002825 */  move  $a1, $zero
/* AE4124 8006CF84 11C00007 */  beqz  $t6, .L8006CFA4
/* AE4128 8006CF88 8FAF0038 */   lw    $t7, 0x38($sp)
/* AE412C 8006CF8C 8FB8003C */  lw    $t8, 0x3c($sp)
/* AE4130 8006CF90 8FB90040 */  lw    $t9, 0x40($sp)
/* AE4134 8006CF94 AFAF0010 */  sw    $t7, 0x10($sp)
/* AE4138 8006CF98 AFB80014 */  sw    $t8, 0x14($sp)
/* AE413C 8006CF9C 0C01B2EB */  jal   func_8006CBAC
/* AE4140 8006CFA0 AFB90018 */   sw    $t9, 0x18($sp)
.L8006CFA4:
/* AE4144 8006CFA4 8FBF0024 */  lw    $ra, 0x24($sp)
/* AE4148 8006CFA8 27BD0028 */  addiu $sp, $sp, 0x28
/* AE414C 8006CFAC 03E00008 */  jr    $ra
/* AE4150 8006CFB0 00000000 */   nop   
