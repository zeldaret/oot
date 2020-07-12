glabel func_800F89A0
/* B6FB40 800F89A0 27BDFFB8 */  addiu $sp, $sp, -0x48
/* B6FB44 800F89A4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B6FB48 800F89A8 AFA40048 */  sw    $a0, 0x48($sp)
/* B6FB4C 800F89AC AFA5004C */  sw    $a1, 0x4c($sp)
/* B6FB50 800F89B0 0C03E221 */  jal   func_800F8884
/* B6FB54 800F89B4 93A4004B */   lbu   $a0, 0x4b($sp)
/* B6FB58 800F89B8 93AE004B */  lbu   $t6, 0x4b($sp)
/* B6FB5C 800F89BC 8FB8004C */  lw    $t8, 0x4c($sp)
/* B6FB60 800F89C0 24040001 */  li    $a0, 1
/* B6FB64 800F89C4 000E7B00 */  sll   $t7, $t6, 0xc
/* B6FB68 800F89C8 A7AF0040 */  sh    $t7, 0x40($sp)
/* B6FB6C 800F89CC 27A50018 */  addiu $a1, $sp, 0x18
/* B6FB70 800F89D0 0C03DD38 */  jal   func_800F74E0
/* B6FB74 800F89D4 AFB80018 */   sw    $t8, 0x18($sp)
/* B6FB78 800F89D8 8FBF0014 */  lw    $ra, 0x14($sp)
/* B6FB7C 800F89DC 27BD0048 */  addiu $sp, $sp, 0x48
/* B6FB80 800F89E0 03E00008 */  jr    $ra
/* B6FB84 800F89E4 00000000 */   nop   

