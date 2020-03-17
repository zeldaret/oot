glabel func_8005CE6C
/* AD400C 8005CE6C 3C0E8012 */  lui   $t6, %hi(D_8011DEAC) # $t6, 0x8012
/* AD4010 8005CE70 25CEDEAC */  addiu $t6, %lo(D_8011DEAC) # addiu $t6, $t6, -0x2154
/* AD4014 8005CE74 AFA40000 */  sw    $a0, ($sp)
/* AD4018 8005CE78 25C8003C */  addiu $t0, $t6, 0x3c
/* AD401C 8005CE7C 00A0C825 */  move  $t9, $a1
.L8005CE80:
/* AD4020 8005CE80 8DD80000 */  lw    $t8, ($t6)
/* AD4024 8005CE84 25CE000C */  addiu $t6, $t6, 0xc
/* AD4028 8005CE88 2739000C */  addiu $t9, $t9, 0xc
/* AD402C 8005CE8C AF38FFF4 */  sw    $t8, -0xc($t9)
/* AD4030 8005CE90 8DCFFFF8 */  lw    $t7, -8($t6)
/* AD4034 8005CE94 AF2FFFF8 */  sw    $t7, -8($t9)
/* AD4038 8005CE98 8DD8FFFC */  lw    $t8, -4($t6)
/* AD403C 8005CE9C 15C8FFF8 */  bne   $t6, $t0, .L8005CE80
/* AD4040 8005CEA0 AF38FFFC */   sw    $t8, -4($t9)
/* AD4044 8005CEA4 8DD80000 */  lw    $t8, ($t6)
/* AD4048 8005CEA8 24020001 */  li    $v0, 1
/* AD404C 8005CEAC 03E00008 */  jr    $ra
/* AD4050 8005CEB0 AF380000 */   sw    $t8, ($t9)

