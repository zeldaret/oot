glabel func_8005B884
/* AD2A24 8005B884 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD2A28 8005B888 3C0E8012 */  lui   $t6, %hi(D_8011DE2C) # $t6, 0x8012
/* AD2A2C 8005B88C 25CEDE2C */  addiu $t6, %lo(D_8011DE2C) # addiu $t6, $t6, -0x21d4
/* AD2A30 8005B890 AFBF0014 */  sw    $ra, 0x14($sp)
/* AD2A34 8005B894 AFA40018 */  sw    $a0, 0x18($sp)
/* AD2A38 8005B898 00A03025 */  move  $a2, $a1
/* AD2A3C 8005B89C 25C80024 */  addiu $t0, $t6, 0x24
/* AD2A40 8005B8A0 00A0C825 */  move  $t9, $a1
.L8005B8A4:
/* AD2A44 8005B8A4 8DD80000 */  lw    $t8, ($t6)
/* AD2A48 8005B8A8 25CE000C */  addiu $t6, $t6, 0xc
/* AD2A4C 8005B8AC 2739000C */  addiu $t9, $t9, 0xc
/* AD2A50 8005B8B0 AF38FFF4 */  sw    $t8, -0xc($t9)
/* AD2A54 8005B8B4 8DCFFFF8 */  lw    $t7, -8($t6)
/* AD2A58 8005B8B8 AF2FFFF8 */  sw    $t7, -8($t9)
/* AD2A5C 8005B8BC 8DD8FFFC */  lw    $t8, -4($t6)
/* AD2A60 8005B8C0 15C8FFF8 */  bne   $t6, $t0, .L8005B8A4
/* AD2A64 8005B8C4 AF38FFFC */   sw    $t8, -4($t9)
/* AD2A68 8005B8C8 8DD80000 */  lw    $t8, ($t6)
/* AD2A6C 8005B8CC 00C02825 */  move  $a1, $a2
/* AD2A70 8005B8D0 AF380000 */  sw    $t8, ($t9)
/* AD2A74 8005B8D4 AFA6001C */  sw    $a2, 0x1c($sp)
/* AD2A78 8005B8D8 0C016DF0 */  jal   func_8005B7C0
/* AD2A7C 8005B8DC 8FA40018 */   lw    $a0, 0x18($sp)
/* AD2A80 8005B8E0 8FA6001C */  lw    $a2, 0x1c($sp)
/* AD2A84 8005B8E4 8FA40018 */  lw    $a0, 0x18($sp)
/* AD2A88 8005B8E8 0C016E09 */  jal   func_8005B824
/* AD2A8C 8005B8EC 24C50008 */   addiu $a1, $a2, 8
/* AD2A90 8005B8F0 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD2A94 8005B8F4 27BD0018 */  addiu $sp, $sp, 0x18
/* AD2A98 8005B8F8 24020001 */  li    $v0, 1
/* AD2A9C 8005B8FC 03E00008 */  jr    $ra
/* AD2AA0 8005B900 00000000 */   nop   

