glabel func_800C3C80
/* B3AE20 800C3C80 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B3AE24 800C3C84 AFBF0014 */  sw    $ra, 0x14($sp)
/* B3AE28 800C3C88 8C820070 */  lw    $v0, 0x70($a0)
/* B3AE2C 800C3C8C 00002825 */  move  $a1, $zero
/* B3AE30 800C3C90 24060001 */  li    $a2, 1
/* B3AE34 800C3C94 8C4E0040 */  lw    $t6, 0x40($v0)
/* B3AE38 800C3C98 51C00004 */  beql  $t6, $zero, .L800C3CAC
/* B3AE3C 800C3C9C 8FBF0014 */   lw    $ra, 0x14($sp)
/* B3AE40 800C3CA0 0C000C18 */  jal   osSendMesg
/* B3AE44 800C3CA4 8C440040 */   lw    $a0, 0x40($v0)
/* B3AE48 800C3CA8 8FBF0014 */  lw    $ra, 0x14($sp)
.L800C3CAC:
/* B3AE4C 800C3CAC 27BD0018 */  addiu $sp, $sp, 0x18
/* B3AE50 800C3CB0 03E00008 */  jr    $ra
/* B3AE54 800C3CB4 00000000 */   nop   

