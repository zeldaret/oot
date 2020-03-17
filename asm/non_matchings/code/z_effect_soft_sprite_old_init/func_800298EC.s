glabel func_800298EC
/* AA0A8C 800298EC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AA0A90 800298F0 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA0A94 800298F4 AFA5002C */  sw    $a1, 0x2c($sp)
/* AA0A98 800298F8 AFA60030 */  sw    $a2, 0x30($sp)
/* AA0A9C 800298FC 8CB80000 */  lw    $t8, ($a1)
/* AA0AA0 80029900 27A70018 */  addiu $a3, $sp, 0x18
/* AA0AA4 80029904 24060080 */  li    $a2, 128
/* AA0AA8 80029908 ACF80000 */  sw    $t8, ($a3)
/* AA0AAC 8002990C 8CAF0004 */  lw    $t7, 4($a1)
/* AA0AB0 80029910 ACEF0004 */  sw    $t7, 4($a3)
/* AA0AB4 80029914 8CB80008 */  lw    $t8, 8($a1)
/* AA0AB8 80029918 24050010 */  li    $a1, 16
/* AA0ABC 8002991C ACF80008 */  sw    $t8, 8($a3)
/* AA0AC0 80029920 87B90032 */  lh    $t9, 0x32($sp)
/* AA0AC4 80029924 0C009DE6 */  jal   func_80027798
/* AA0AC8 80029928 A7B90024 */   sh    $t9, 0x24($sp)
/* AA0ACC 8002992C 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA0AD0 80029930 27BD0028 */  addiu $sp, $sp, 0x28
/* AA0AD4 80029934 03E00008 */  jr    $ra
/* AA0AD8 80029938 00000000 */   nop   

