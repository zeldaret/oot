glabel func_8005C2BC
/* AD345C 8005C2BC 27BDFFF0 */  addiu $sp, $sp, -0x10
/* AD3460 8005C2C0 3C0E8012 */  lui   $t6, %hi(D_8011DE6C) # $t6, 0x8012
/* AD3464 8005C2C4 AFA40010 */  sw    $a0, 0x10($sp)
/* AD3468 8005C2C8 25CEDE6C */  addiu $t6, %lo(D_8011DE6C) # addiu $t6, $t6, -0x2194
/* AD346C 8005C2CC 8DD80000 */  lw    $t8, ($t6)
/* AD3470 8005C2D0 27A30004 */  addiu $v1, $sp, 4
/* AD3474 8005C2D4 24020001 */  li    $v0, 1
/* AD3478 8005C2D8 AC780000 */  sw    $t8, ($v1)
/* AD347C 8005C2DC 8DCF0004 */  lw    $t7, 4($t6)
/* AD3480 8005C2E0 8C680000 */  lw    $t0, ($v1)
/* AD3484 8005C2E4 AC6F0004 */  sw    $t7, 4($v1)
/* AD3488 8005C2E8 8DD80008 */  lw    $t8, 8($t6)
/* AD348C 8005C2EC AC780008 */  sw    $t8, 8($v1)
/* AD3490 8005C2F0 A8A80000 */  swl   $t0, ($a1)
/* AD3494 8005C2F4 B8A80003 */  swr   $t0, 3($a1)
/* AD3498 8005C2F8 8C790004 */  lw    $t9, 4($v1)
/* AD349C 8005C2FC A8B90004 */  swl   $t9, 4($a1)
/* AD34A0 8005C300 B8B90007 */  swr   $t9, 7($a1)
/* AD34A4 8005C304 8C680008 */  lw    $t0, 8($v1)
/* AD34A8 8005C308 27BD0010 */  addiu $sp, $sp, 0x10
/* AD34AC 8005C30C A8A80008 */  swl   $t0, 8($a1)
/* AD34B0 8005C310 03E00008 */  jr    $ra
/* AD34B4 8005C314 B8A8000B */   swr   $t0, 0xb($a1)

