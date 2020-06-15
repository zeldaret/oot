glabel func_800B8F30
/* B300D0 800B8F30 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B300D4 800B8F34 AFBF0014 */  sw    $ra, 0x14($sp)
/* B300D8 800B8F38 00803025 */  move  $a2, $a0
/* B300DC 800B8F3C 90C50000 */  lbu   $a1, ($a2)
/* B300E0 800B8F40 0C02EEDB */  jal   Mempak_DeleteFile
/* B300E4 800B8F44 24040002 */   li    $a0, 2
/* B300E8 800B8F48 8FBF0014 */  lw    $ra, 0x14($sp)
/* B300EC 800B8F4C 27BD0018 */  addiu $sp, $sp, 0x18
/* B300F0 800B8F50 03E00008 */  jr    $ra
/* B300F4 800B8F54 00000000 */   nop
