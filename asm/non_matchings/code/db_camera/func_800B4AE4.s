glabel func_800B4AE4
/* B2BC84 800B4AE4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B2BC88 800B4AE8 00803825 */  move  $a3, $a0
/* B2BC8C 800B4AEC AFBF0014 */  sw    $ra, 0x14($sp)
/* B2BC90 800B4AF0 AFA40020 */  sw    $a0, 0x20($sp)
/* B2BC94 800B4AF4 27A2001C */  addiu $v0, $sp, 0x1c
/* B2BC98 800B4AF8 A7A7001C */  sh    $a3, 0x1c($sp)
/* B2BC9C 800B4AFC 3C048014 */  lui   $a0, %hi(D_801435FC) # $a0, 0x8014
/* B2BCA0 800B4B00 248435FC */  addiu $a0, %lo(D_801435FC) # addiu $a0, $a0, 0x35fc
/* B2BCA4 800B4B04 90460001 */  lbu   $a2, 1($v0)
/* B2BCA8 800B4B08 0C00084C */  jal   osSyncPrintf
/* B2BCAC 800B4B0C 90450000 */   lbu   $a1, ($v0)
/* B2BCB0 800B4B10 8FBF0014 */  lw    $ra, 0x14($sp)
/* B2BCB4 800B4B14 27BD0020 */  addiu $sp, $sp, 0x20
/* B2BCB8 800B4B18 03E00008 */  jr    $ra
/* B2BCBC 800B4B1C 00000000 */   nop   

