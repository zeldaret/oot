glabel func_8005C5B0
/* AD3750 8005C5B0 3C0E8012 */  lui   $t6, %hi(D_8011DE78) # $t6, 0x8012
/* AD3754 8005C5B4 25CEDE78 */  addiu $t6, %lo(D_8011DE78) # addiu $t6, $t6, -0x2188
/* AD3758 8005C5B8 AFA40000 */  sw    $a0, ($sp)
/* AD375C 8005C5BC 25C80030 */  addiu $t0, $t6, 0x30
/* AD3760 8005C5C0 00A0C825 */  move  $t9, $a1
.L8005C5C4:
/* AD3764 8005C5C4 8DD80000 */  lw    $t8, ($t6)
/* AD3768 8005C5C8 25CE000C */  addiu $t6, $t6, 0xc
/* AD376C 8005C5CC 2739000C */  addiu $t9, $t9, 0xc
/* AD3770 8005C5D0 AF38FFF4 */  sw    $t8, -0xc($t9)
/* AD3774 8005C5D4 8DCFFFF8 */  lw    $t7, -8($t6)
/* AD3778 8005C5D8 AF2FFFF8 */  sw    $t7, -8($t9)
/* AD377C 8005C5DC 8DD8FFFC */  lw    $t8, -4($t6)
/* AD3780 8005C5E0 15C8FFF8 */  bne   $t6, $t0, .L8005C5C4
/* AD3784 8005C5E4 AF38FFFC */   sw    $t8, -4($t9)
/* AD3788 8005C5E8 8DD80000 */  lw    $t8, ($t6)
/* AD378C 8005C5EC 24020001 */  li    $v0, 1
/* AD3790 8005C5F0 03E00008 */  jr    $ra
/* AD3794 8005C5F4 AF380000 */   sw    $t8, ($t9)

