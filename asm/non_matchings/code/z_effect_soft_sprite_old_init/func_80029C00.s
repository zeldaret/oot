glabel func_80029C00
/* AA0DA0 80029C00 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AA0DA4 80029C04 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA0DA8 80029C08 AFA5002C */  sw    $a1, 0x2c($sp)
/* AA0DAC 80029C0C AFA60030 */  sw    $a2, 0x30($sp)
/* AA0DB0 80029C10 8CB80000 */  lw    $t8, ($a1)
/* AA0DB4 80029C14 27A70018 */  addiu $a3, $sp, 0x18
/* AA0DB8 80029C18 24060080 */  li    $a2, 128
/* AA0DBC 80029C1C ACF80000 */  sw    $t8, ($a3)
/* AA0DC0 80029C20 8CAF0004 */  lw    $t7, 4($a1)
/* AA0DC4 80029C24 ACEF0004 */  sw    $t7, 4($a3)
/* AA0DC8 80029C28 8CB80008 */  lw    $t8, 8($a1)
/* AA0DCC 80029C2C 24050014 */  li    $a1, 20
/* AA0DD0 80029C30 ACF80008 */  sw    $t8, 8($a3)
/* AA0DD4 80029C34 8FB90030 */  lw    $t9, 0x30($sp)
/* AA0DD8 80029C38 0C009DE6 */  jal   func_80027798
/* AA0DDC 80029C3C AFB90024 */   sw    $t9, 0x24($sp)
/* AA0DE0 80029C40 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA0DE4 80029C44 27BD0028 */  addiu $sp, $sp, 0x28
/* AA0DE8 80029C48 03E00008 */  jr    $ra
/* AA0DEC 80029C4C 00000000 */   nop   

