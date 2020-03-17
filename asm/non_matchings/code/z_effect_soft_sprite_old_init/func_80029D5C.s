glabel func_80029D5C
/* AA0EFC 80029D5C 27BDFFB8 */  addiu $sp, $sp, -0x48
/* AA0F00 80029D60 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA0F04 80029D64 AFA40048 */  sw    $a0, 0x48($sp)
/* AA0F08 80029D68 AFA5004C */  sw    $a1, 0x4c($sp)
/* AA0F0C 80029D6C AFA50040 */  sw    $a1, 0x40($sp)
/* AA0F10 80029D70 AFA70054 */  sw    $a3, 0x54($sp)
/* AA0F14 80029D74 00C02825 */  move  $a1, $a2
/* AA0F18 80029D78 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA0F1C 80029D7C 27A40018 */   addiu $a0, $sp, 0x18
/* AA0F20 80029D80 87AF0056 */  lh    $t7, 0x56($sp)
/* AA0F24 80029D84 93B8005B */  lbu   $t8, 0x5b($sp)
/* AA0F28 80029D88 24190001 */  li    $t9, 1
/* AA0F2C 80029D8C A3B90044 */  sb    $t9, 0x44($sp)
/* AA0F30 80029D90 8FA40048 */  lw    $a0, 0x48($sp)
/* AA0F34 80029D94 24050016 */  li    $a1, 22
/* AA0F38 80029D98 24060080 */  li    $a2, 128
/* AA0F3C 80029D9C 27A70018 */  addiu $a3, $sp, 0x18
/* AA0F40 80029DA0 A7AF003C */  sh    $t7, 0x3c($sp)
/* AA0F44 80029DA4 0C009DE6 */  jal   func_80027798
/* AA0F48 80029DA8 A3B8003E */   sb    $t8, 0x3e($sp)
/* AA0F4C 80029DAC 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA0F50 80029DB0 27BD0048 */  addiu $sp, $sp, 0x48
/* AA0F54 80029DB4 03E00008 */  jr    $ra
/* AA0F58 80029DB8 00000000 */   nop   

